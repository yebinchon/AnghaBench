
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_12__ {int * data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_repos__dumpfile_headers_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_filesize_t ;
struct TYPE_13__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_checksum_t ;
typedef void* svn_boolean_t ;
struct edit_baton {int current_rev; int oldest_dumped_rev; int stream; int * fs_root; scalar_t__ use_deltas; int notify_baton; scalar_t__ notify_func; scalar_t__ check_normalization; scalar_t__ verify; int found_old_mergeinfo; void** found_old_reference; int path_tracker; } ;
typedef int errbuf ;
typedef enum svn_node_action { ____Placeholder_svn_node_action } svn_node_action ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 scalar_t__ ARE_VALID_COPY_ARGS (char const*,int) ;
 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int SVN_PROP_MERGEINFO ;
 int SVN_REPOS_DUMPFILE_NODE_ACTION ;
 int SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH ;
 int SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV ;
 int SVN_REPOS_DUMPFILE_NODE_KIND ;
 int SVN_REPOS_DUMPFILE_NODE_PATH ;
 int SVN_REPOS_DUMPFILE_PROP_DELTA ;
 int SVN_REPOS_DUMPFILE_TEXT_CONTENT_MD5 ;
 int SVN_REPOS_DUMPFILE_TEXT_CONTENT_SHA1 ;
 int SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_MD5 ;
 int SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_SHA1 ;
 int SVN_REPOS_DUMPFILE_TEXT_DELTA ;
 int SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_MD5 ;
 int SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_SHA1 ;
 void* TRUE ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int apr_psprintf (int *,int ,char const*,int) ;
 int check_mergeinfo_normalization (char const*,int *,int *,scalar_t__,int ,int *) ;
 int dump_node_delete (int ,char const*,int *) ;
 int node_must_exist (struct edit_baton*,char const*,int,scalar_t__,int *) ;
 int node_must_not_exist (struct edit_baton*,char const*,int,int *) ;
 int notify_warning (int *,scalar_t__,int ,int ,int ,int,...) ;
 int store_delta (int **,int *,int *,char const*,int *,char const*,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_sha1 ;
 char* svn_checksum_to_cstring (int *,int *) ;
 int svn_err_best_message (TYPE_2__*,char*,int) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_fs__path_valid (char const*,int *) ;
 int svn_fs_contents_changed (void**,int *,char const*,int *,char const*,int *) ;
 int svn_fs_file_checksum (int **,int ,int *,char const*,void*,int *) ;
 int svn_fs_file_contents (int **,int *,char const*,int *) ;
 int svn_fs_file_length (int *,int *,char const*,int *) ;
 int svn_fs_node_proplist (int **,int *,char const*,int *) ;
 int svn_fs_props_changed (void**,int *,char const*,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int ,int,int *) ;
 int svn_fs_root_fs (int *) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_hash_write_incremental (int *,int *,int *,char*,int *) ;




 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_unknown ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 int svn_repos__dump_headers (int ,int *,int *) ;
 int svn_repos__dump_node_record (int ,int *,int *,void*,int ,void*,int *) ;
 int svn_repos__dumpfile_header_push (int *,int ,char const*) ;
 int svn_repos__dumpfile_header_pushf (int *,int ,char*,int) ;
 int * svn_repos__dumpfile_headers_create (int *) ;
 int svn_repos_notify_warning_found_old_reference ;
 int svn_repos_notify_warning_invalid_fspath ;
 int svn_stream_close (int *) ;
 int svn_stream_copy3 (int *,int ,int *,int *,int *) ;
 int svn_stream_disown (int ,int *) ;
 int * svn_stream_from_aprfile2 (int *,void*,int *) ;
 int * svn_stream_from_stringbuf (int *,int *) ;
 TYPE_2__* svn_stream_write (int ,char*,int*) ;
 int * svn_stringbuf_create_ensure (int ,int *) ;
 int tracker_path_add (int ,char const*) ;
 int tracker_path_copy (int ,char const*,char const*,int) ;
 int tracker_path_delete (int ,char const*) ;
 int tracker_path_replace (int ,char const*) ;
 TYPE_2__* verify_mergeinfo_revisions (int ,int *,int,scalar_t__,int ,int *) ;

__attribute__((used)) static svn_error_t *
dump_node(struct edit_baton *eb,
          const char *path,
          svn_node_kind_t kind,
          enum svn_node_action action,
          svn_boolean_t is_copy,
          const char *cmp_path,
          svn_revnum_t cmp_rev,
          apr_pool_t *pool)
{
  svn_stringbuf_t *propstring;
  apr_size_t len;
  svn_boolean_t must_dump_text = FALSE, must_dump_props = FALSE;
  const char *compare_path = path;
  svn_revnum_t compare_rev = eb->current_rev - 1;
  svn_fs_root_t *compare_root = ((void*)0);
  apr_file_t *delta_file = ((void*)0);
  svn_repos__dumpfile_headers_t *headers
    = svn_repos__dumpfile_headers_create(pool);
  svn_filesize_t textlen;


  if (eb->verify || eb->notify_func)
    {
      svn_error_t *err = svn_fs__path_valid(path, pool);

      if (err)
        {
          if (eb->notify_func)
            {
              char errbuf[512];

              notify_warning(pool, eb->notify_func, eb->notify_baton,
                             svn_repos_notify_warning_invalid_fspath,
                             _("E%06d: While validating fspath '%s': %s"),
                             err->apr_err, path,
                             svn_err_best_message(err, errbuf, sizeof(errbuf)));
            }


          if (eb->verify)
            return svn_error_trace(err);
          else
            svn_error_clear(err);
        }
    }


  svn_repos__dumpfile_header_push(
    headers, SVN_REPOS_DUMPFILE_NODE_PATH, path);
  if (kind == svn_node_file)
    svn_repos__dumpfile_header_push(
      headers, SVN_REPOS_DUMPFILE_NODE_KIND, "file");
  else if (kind == svn_node_dir)
    svn_repos__dumpfile_header_push(
      headers, SVN_REPOS_DUMPFILE_NODE_KIND, "dir");


  if (cmp_path)
    cmp_path = svn_relpath_canonicalize(cmp_path, pool);


  if (ARE_VALID_COPY_ARGS(cmp_path, cmp_rev))
    {
      compare_path = cmp_path;
      compare_rev = cmp_rev;
    }

  switch (action)
    {
    case 130:
      if (eb->path_tracker)
        SVN_ERR_W(node_must_exist(eb, path, eb->current_rev, kind, pool),
                  apr_psprintf(pool, _("Change invalid path '%s' in r%ld"),
                               path, eb->current_rev));

      svn_repos__dumpfile_header_push(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "change");


      SVN_ERR(svn_fs_revision_root(&compare_root,
                                   svn_fs_root_fs(eb->fs_root),
                                   compare_rev, pool));

      SVN_ERR(svn_fs_props_changed(&must_dump_props,
                                   compare_root, compare_path,
                                   eb->fs_root, path, pool));
      if (kind == svn_node_file)
        SVN_ERR(svn_fs_contents_changed(&must_dump_text,
                                        compare_root, compare_path,
                                        eb->fs_root, path, pool));
      break;

    case 129:
      if (eb->path_tracker)
        {
          SVN_ERR_W(node_must_exist(eb, path, eb->current_rev, kind, pool),
                    apr_psprintf(pool, _("Deleting invalid path '%s' in r%ld"),
                                 path, eb->current_rev));
          tracker_path_delete(eb->path_tracker, path);
        }

      svn_repos__dumpfile_header_push(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "delete");



      must_dump_text = FALSE;
      must_dump_props = FALSE;
      break;

    case 128:
      if (eb->path_tracker)
        SVN_ERR_W(node_must_exist(eb, path, eb->current_rev,
                                  svn_node_unknown, pool),
                  apr_psprintf(pool,
                               _("Replacing non-existent path '%s' in r%ld"),
                               path, eb->current_rev));

      if (! is_copy)
        {
          if (eb->path_tracker)
            tracker_path_replace(eb->path_tracker, path);


          svn_repos__dumpfile_header_push(
            headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "replace");


          if (kind == svn_node_file)
            must_dump_text = TRUE;
          must_dump_props = TRUE;
          break;
        }
      else
        {



          if (eb->path_tracker)
            {
              tracker_path_delete(eb->path_tracker, path);
            }



          SVN_ERR(dump_node_delete(eb->stream, path, pool));



        }


    case 131:
      if (eb->path_tracker)
        SVN_ERR_W(node_must_not_exist(eb, path, eb->current_rev, pool),
                  apr_psprintf(pool,
                               _("Adding already existing path '%s' in r%ld"),
                               path, eb->current_rev));

      svn_repos__dumpfile_header_push(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "add");

      if (! is_copy)
        {
          if (eb->path_tracker)
            tracker_path_add(eb->path_tracker, path);


          if (kind == svn_node_file)
            must_dump_text = TRUE;
          must_dump_props = TRUE;
        }
      else
        {
          if (eb->path_tracker)
            {
              SVN_ERR_W(node_must_exist(eb, compare_path, compare_rev,
                                        kind, pool),
                        apr_psprintf(pool,
                                     _("Copying from invalid path to "
                                       "'%s' in r%ld"),
                                     path, eb->current_rev));
              tracker_path_copy(eb->path_tracker, path, compare_path,
                                compare_rev);
            }

          if (!eb->verify && cmp_rev < eb->oldest_dumped_rev
              && eb->notify_func)
            {
              notify_warning(pool, eb->notify_func, eb->notify_baton,
                             svn_repos_notify_warning_found_old_reference,
                             _("Referencing data in revision %ld,"
                               " which is older than the oldest"
                               " dumped revision (r%ld).  Loading this dump"
                               " into an empty repository"
                               " will fail."),
                             cmp_rev, eb->oldest_dumped_rev);
              if (eb->found_old_reference)
                *eb->found_old_reference = TRUE;
            }

          svn_repos__dumpfile_header_pushf(
            headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV, "%ld", cmp_rev);
          svn_repos__dumpfile_header_push(
            headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH, cmp_path);

          SVN_ERR(svn_fs_revision_root(&compare_root,
                                       svn_fs_root_fs(eb->fs_root),
                                       compare_rev, pool));



          SVN_ERR(svn_fs_props_changed(&must_dump_props,
                                       compare_root, compare_path,
                                       eb->fs_root, path, pool));
          if (kind == svn_node_file)
            {
              svn_checksum_t *checksum;
              const char *hex_digest;
              SVN_ERR(svn_fs_contents_changed(&must_dump_text,
                                              compare_root, compare_path,
                                              eb->fs_root, path, pool));

              SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_md5,
                                           compare_root, compare_path,
                                           FALSE, pool));
              hex_digest = svn_checksum_to_cstring(checksum, pool);
              if (hex_digest)
                svn_repos__dumpfile_header_push(
                  headers, SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_MD5, hex_digest);

              SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_sha1,
                                           compare_root, compare_path,
                                           FALSE, pool));
              hex_digest = svn_checksum_to_cstring(checksum, pool);
              if (hex_digest)
                svn_repos__dumpfile_header_push(
                  headers, SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_SHA1, hex_digest);
            }
        }
      break;
    }

  if ((! must_dump_text) && (! must_dump_props))
    {





      SVN_ERR(svn_repos__dump_headers(eb->stream, headers, pool));
      len = 1;
      return svn_stream_write(eb->stream, "\n", &len);
    }






  if (must_dump_props)
    {
      apr_hash_t *prophash, *oldhash = ((void*)0);
      svn_stream_t *propstream;

      SVN_ERR(svn_fs_node_proplist(&prophash, eb->fs_root, path, pool));




      if (!eb->verify && eb->notify_func && eb->oldest_dumped_rev > 1)
        {
          svn_string_t *mergeinfo_str = svn_hash_gets(prophash,
                                                      SVN_PROP_MERGEINFO);
          if (mergeinfo_str)
            {


              svn_error_clear(verify_mergeinfo_revisions(
                                eb->found_old_mergeinfo,
                                mergeinfo_str->data, eb->oldest_dumped_rev,
                                eb->notify_func, eb->notify_baton,
                                pool));
            }
        }




      if (eb->verify && eb->check_normalization && eb->notify_func)
        {



          svn_string_t *mergeinfo_str = svn_hash_gets(prophash,
                                                      SVN_PROP_MERGEINFO);
          if (mergeinfo_str)
            {
              svn_string_t *oldinfo_str = ((void*)0);
              if (compare_root)
                {
                  SVN_ERR(svn_fs_node_proplist(&oldhash,
                                               compare_root, compare_path,
                                               pool));
                  oldinfo_str = svn_hash_gets(oldhash, SVN_PROP_MERGEINFO);
                }
              SVN_ERR(check_mergeinfo_normalization(
                          path, mergeinfo_str->data,
                          (oldinfo_str ? oldinfo_str->data : ((void*)0)),
                          eb->notify_func, eb->notify_baton, pool));
            }
        }

      if (eb->use_deltas && compare_root)
        {


          if (!oldhash)
            SVN_ERR(svn_fs_node_proplist(&oldhash, compare_root, compare_path,
                                         pool));
          svn_repos__dumpfile_header_push(
            headers, SVN_REPOS_DUMPFILE_PROP_DELTA, "true");
        }
      else
        oldhash = apr_hash_make(pool);
      propstring = svn_stringbuf_create_ensure(0, pool);
      propstream = svn_stream_from_stringbuf(propstring, pool);
      SVN_ERR(svn_hash_write_incremental(prophash, oldhash, propstream,
                                         "PROPS-END", pool));
      SVN_ERR(svn_stream_close(propstream));
    }



  if (must_dump_text && (kind == svn_node_file))
    {
      svn_checksum_t *checksum;
      const char *hex_digest;

      if (eb->use_deltas)
        {



          SVN_ERR(store_delta(&delta_file, &textlen, compare_root,
                              compare_path, eb->fs_root, path, pool));
          svn_repos__dumpfile_header_push(
            headers, SVN_REPOS_DUMPFILE_TEXT_DELTA, "true");

          if (compare_root)
            {
              SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_md5,
                                           compare_root, compare_path,
                                           FALSE, pool));
              hex_digest = svn_checksum_to_cstring(checksum, pool);
              if (hex_digest)
                svn_repos__dumpfile_header_push(
                  headers, SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_MD5, hex_digest);

              SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_sha1,
                                           compare_root, compare_path,
                                           FALSE, pool));
              hex_digest = svn_checksum_to_cstring(checksum, pool);
              if (hex_digest)
                svn_repos__dumpfile_header_push(
                  headers, SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_SHA1, hex_digest);
            }
        }
      else
        {

          SVN_ERR(svn_fs_file_length(&textlen, eb->fs_root, path, pool));
        }

      SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_md5,
                                   eb->fs_root, path, FALSE, pool));
      hex_digest = svn_checksum_to_cstring(checksum, pool);
      if (hex_digest)
        svn_repos__dumpfile_header_push(
          headers, SVN_REPOS_DUMPFILE_TEXT_CONTENT_MD5, hex_digest);

      SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_sha1,
                                   eb->fs_root, path, FALSE, pool));
      hex_digest = svn_checksum_to_cstring(checksum, pool);
      if (hex_digest)
        svn_repos__dumpfile_header_push(
          headers, SVN_REPOS_DUMPFILE_TEXT_CONTENT_SHA1, hex_digest);
    }




  SVN_ERR(svn_repos__dump_node_record(eb->stream, headers,
                                      must_dump_props ? propstring : ((void*)0),
                                      must_dump_text,
                                      must_dump_text ? textlen : 0,
                                      TRUE ,
                                      pool));


  if (must_dump_text && (kind == svn_node_file))
    {
      svn_stream_t *contents;

      if (delta_file)
        {


          contents = svn_stream_from_aprfile2(delta_file, FALSE, pool);
        }
      else
        SVN_ERR(svn_fs_file_contents(&contents, eb->fs_root, path, pool));

      SVN_ERR(svn_stream_copy3(contents, svn_stream_disown(eb->stream, pool),
                               ((void*)0), ((void*)0), pool));
    }

  len = 2;
  return svn_stream_write(eb->stream, "\n\n", &len);
}
