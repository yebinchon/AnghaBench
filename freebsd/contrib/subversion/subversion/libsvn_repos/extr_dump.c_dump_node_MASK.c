#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_12__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos__dumpfile_headers_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;
struct TYPE_13__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  void* svn_boolean_t ;
struct edit_baton {int current_rev; int oldest_dumped_rev; int /*<<< orphan*/  stream; int /*<<< orphan*/ * fs_root; scalar_t__ use_deltas; int /*<<< orphan*/  notify_baton; scalar_t__ notify_func; scalar_t__ check_normalization; scalar_t__ verify; int /*<<< orphan*/  found_old_mergeinfo; void** found_old_reference; int /*<<< orphan*/  path_tracker; } ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  enum svn_node_action { ____Placeholder_svn_node_action } svn_node_action ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_PROP_MERGEINFO ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_ACTION ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_KIND ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_PATH ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_PROP_DELTA ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_CONTENT_MD5 ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_CONTENT_SHA1 ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_MD5 ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_SHA1 ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_DELTA ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_MD5 ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_SHA1 ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct edit_baton*,char const*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct edit_baton*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 TYPE_2__* FUNC15 (TYPE_2__*) ; 
 TYPE_2__* FUNC16 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (void**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (void**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
#define  svn_node_action_add 131 
#define  svn_node_action_change 130 
#define  svn_node_action_delete 129 
#define  svn_node_action_replace 128 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_unknown ; 
 char* FUNC27 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_repos_notify_warning_found_old_reference ; 
 int /*<<< orphan*/  svn_repos_notify_warning_invalid_fspath ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC36 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC38 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/ * FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC44 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC45(struct edit_baton *eb,
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
  svn_fs_root_t *compare_root = NULL;
  apr_file_t *delta_file = NULL;
  svn_repos__dumpfile_headers_t *headers
    = FUNC32(pool);
  svn_filesize_t textlen;

  /* Maybe validate the path. */
  if (eb->verify || eb->notify_func)
    {
      svn_error_t *err = FUNC16(path, pool);

      if (err)
        {
          if (eb->notify_func)
            {
              char errbuf[512]; /* ### svn_strerror() magic number  */

              FUNC10(pool, eb->notify_func, eb->notify_baton,
                             svn_repos_notify_warning_invalid_fspath,
                             FUNC3("E%06d: While validating fspath '%s': %s"),
                             err->apr_err, path,
                             FUNC13(err, errbuf, sizeof(errbuf)));
            }

          /* Return the error in addition to notifying about it. */
          if (eb->verify)
            return FUNC15(err);
          else
            FUNC14(err);
        }
    }

  /* Write out metadata headers for this file node. */
  FUNC30(
    headers, SVN_REPOS_DUMPFILE_NODE_PATH, path);
  if (kind == svn_node_file)
    FUNC30(
      headers, SVN_REPOS_DUMPFILE_NODE_KIND, "file");
  else if (kind == svn_node_dir)
    FUNC30(
      headers, SVN_REPOS_DUMPFILE_NODE_KIND, "dir");

  /* Remove leading slashes from copyfrom paths. */
  if (cmp_path)
    cmp_path = FUNC27(cmp_path, pool);

  /* Validate the comparison path/rev. */
  if (FUNC0(cmp_path, cmp_rev))
    {
      compare_path = cmp_path;
      compare_rev = cmp_rev;
    }

  switch (action)
    {
    case svn_node_action_change:
      if (eb->path_tracker)
        FUNC2(FUNC8(eb, path, eb->current_rev, kind, pool),
                  FUNC5(pool, FUNC3("Change invalid path '%s' in r%ld"),
                               path, eb->current_rev));

      FUNC30(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "change");

      /* either the text or props changed, or possibly both. */
      FUNC1(FUNC23(&compare_root,
                                   FUNC24(eb->fs_root),
                                   compare_rev, pool));

      FUNC1(FUNC22(&must_dump_props,
                                   compare_root, compare_path,
                                   eb->fs_root, path, pool));
      if (kind == svn_node_file)
        FUNC1(FUNC17(&must_dump_text,
                                        compare_root, compare_path,
                                        eb->fs_root, path, pool));
      break;

    case svn_node_action_delete:
      if (eb->path_tracker)
        {
          FUNC2(FUNC8(eb, path, eb->current_rev, kind, pool),
                    FUNC5(pool, FUNC3("Deleting invalid path '%s' in r%ld"),
                                 path, eb->current_rev));
          FUNC42(eb->path_tracker, path);
        }

      FUNC30(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "delete");

      /* we can leave this routine quietly now, don't need to dump
         any content. */
      must_dump_text = FALSE;
      must_dump_props = FALSE;
      break;

    case svn_node_action_replace:
      if (eb->path_tracker)
        FUNC2(FUNC8(eb, path, eb->current_rev,
                                  svn_node_unknown, pool),
                  FUNC5(pool,
                               FUNC3("Replacing non-existent path '%s' in r%ld"),
                               path, eb->current_rev));

      if (! is_copy)
        {
          if (eb->path_tracker)
            FUNC43(eb->path_tracker, path);

          /* a simple delete+add, implied by a single 'replace' action. */
          FUNC30(
            headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "replace");

          /* definitely need to dump all content for a replace. */
          if (kind == svn_node_file)
            must_dump_text = TRUE;
          must_dump_props = TRUE;
          break;
        }
      else
        {
          /* more complex:  delete original, then add-with-history.  */
          /* ### Why not write a 'replace' record? Don't know. */

          if (eb->path_tracker)
            {
              FUNC42(eb->path_tracker, path);
            }

          /* ### Unusually, we end this 'delete' node record with only a single
                 blank line after the header block -- no extra blank line. */
          FUNC1(FUNC7(eb->stream, path, pool));

          /* The remaining action is a non-replacing add-with-history */
          /* action = svn_node_action_add; */
        }
      /* FALL THROUGH to 'add' */

    case svn_node_action_add:
      if (eb->path_tracker)
        FUNC2(FUNC9(eb, path, eb->current_rev, pool),
                  FUNC5(pool,
                               FUNC3("Adding already existing path '%s' in r%ld"),
                               path, eb->current_rev));

      FUNC30(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "add");

      if (! is_copy)
        {
          if (eb->path_tracker)
            FUNC40(eb->path_tracker, path);

          /* Dump all contents for a simple 'add'. */
          if (kind == svn_node_file)
            must_dump_text = TRUE;
          must_dump_props = TRUE;
        }
      else
        {
          if (eb->path_tracker)
            {
              FUNC2(FUNC8(eb, compare_path, compare_rev,
                                        kind, pool),
                        FUNC5(pool,
                                     FUNC3("Copying from invalid path to "
                                       "'%s' in r%ld"),
                                     path, eb->current_rev));
              FUNC41(eb->path_tracker, path, compare_path,
                                compare_rev);
            }

          if (!eb->verify && cmp_rev < eb->oldest_dumped_rev
              && eb->notify_func)
            {
              FUNC10(pool, eb->notify_func, eb->notify_baton,
                             svn_repos_notify_warning_found_old_reference,
                             FUNC3("Referencing data in revision %ld,"
                               " which is older than the oldest"
                               " dumped revision (r%ld).  Loading this dump"
                               " into an empty repository"
                               " will fail."),
                             cmp_rev, eb->oldest_dumped_rev);
              if (eb->found_old_reference)
                *eb->found_old_reference = TRUE;
            }

          FUNC31(
            headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV, "%ld", cmp_rev);
          FUNC30(
            headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH, cmp_path);

          FUNC1(FUNC23(&compare_root,
                                       FUNC24(eb->fs_root),
                                       compare_rev, pool));

          /* Need to decide if the copied node had any extra textual or
             property mods as well.  */
          FUNC1(FUNC22(&must_dump_props,
                                       compare_root, compare_path,
                                       eb->fs_root, path, pool));
          if (kind == svn_node_file)
            {
              svn_checksum_t *checksum;
              const char *hex_digest;
              FUNC1(FUNC17(&must_dump_text,
                                              compare_root, compare_path,
                                              eb->fs_root, path, pool));

              FUNC1(FUNC18(&checksum, svn_checksum_md5,
                                           compare_root, compare_path,
                                           FALSE, pool));
              hex_digest = FUNC12(checksum, pool);
              if (hex_digest)
                FUNC30(
                  headers, SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_MD5, hex_digest);

              FUNC1(FUNC18(&checksum, svn_checksum_sha1,
                                           compare_root, compare_path,
                                           FALSE, pool));
              hex_digest = FUNC12(checksum, pool);
              if (hex_digest)
                FUNC30(
                  headers, SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_SHA1, hex_digest);
            }
        }
      break;
    }

  if ((! must_dump_text) && (! must_dump_props))
    {
      /* If we're not supposed to dump text or props, so be it, we can
         just go home.  However, if either one needs to be dumped,
         then our dumpstream format demands that at a *minimum*, we
         see a lone "PROPS-END" as a divider between text and props
         content within the content-block. */
      FUNC1(FUNC28(eb->stream, headers, pool));
      len = 1;
      return FUNC38(eb->stream, "\n", &len); /* ### needed? */
    }

  /*** Start prepping content to dump... ***/

  /* If we are supposed to dump properties, write out a property
     length header and generate a stringbuf that contains those
     property values here. */
  if (must_dump_props)
    {
      apr_hash_t *prophash, *oldhash = NULL;
      svn_stream_t *propstream;

      FUNC1(FUNC21(&prophash, eb->fs_root, path, pool));

      /* If this is a partial dump, then issue a warning if we dump mergeinfo
         properties that refer to revisions older than the first revision
         dumped. */
      if (!eb->verify && eb->notify_func && eb->oldest_dumped_rev > 1)
        {
          svn_string_t *mergeinfo_str = FUNC25(prophash,
                                                      SVN_PROP_MERGEINFO);
          if (mergeinfo_str)
            {
              /* An error in verifying the mergeinfo must not prevent dumping
                 the data. Ignore any such error. */
              FUNC14(FUNC44(
                                eb->found_old_mergeinfo,
                                mergeinfo_str->data, eb->oldest_dumped_rev,
                                eb->notify_func, eb->notify_baton,
                                pool));
            }
        }

      /* If we're checking UCS normalization, also parse any changed
         mergeinfo and warn about denormalized paths and name
         collisions there. */
      if (eb->verify && eb->check_normalization && eb->notify_func)
        {
          /* N.B.: This hash lookup happens only once; the conditions
             for verifying historic mergeinfo references and checking
             UCS normalization are mutually exclusive. */
          svn_string_t *mergeinfo_str = FUNC25(prophash,
                                                      SVN_PROP_MERGEINFO);
          if (mergeinfo_str)
            {
              svn_string_t *oldinfo_str = NULL;
              if (compare_root)
                {
                  FUNC1(FUNC21(&oldhash,
                                               compare_root, compare_path,
                                               pool));
                  oldinfo_str = FUNC25(oldhash, SVN_PROP_MERGEINFO);
                }
              FUNC1(FUNC6(
                          path, mergeinfo_str->data,
                          (oldinfo_str ? oldinfo_str->data : NULL),
                          eb->notify_func, eb->notify_baton, pool));
            }
        }

      if (eb->use_deltas && compare_root)
        {
          /* Fetch the old property hash to diff against and output a header
             saying that our property contents are a delta. */
          if (!oldhash)         /* May have been set for normalization check */
            FUNC1(FUNC21(&oldhash, compare_root, compare_path,
                                         pool));
          FUNC30(
            headers, SVN_REPOS_DUMPFILE_PROP_DELTA, "true");
        }
      else
        oldhash = FUNC4(pool);
      propstring = FUNC39(0, pool);
      propstream = FUNC37(propstring, pool);
      FUNC1(FUNC26(prophash, oldhash, propstream,
                                         "PROPS-END", pool));
      FUNC1(FUNC33(propstream));
    }

  /* If we are supposed to dump text, write out a text length header
     here, and an MD5 checksum (if available). */
  if (must_dump_text && (kind == svn_node_file))
    {
      svn_checksum_t *checksum;
      const char *hex_digest;

      if (eb->use_deltas)
        {
          /* Compute the text delta now and write it into a temporary
             file, so that we can find its length.  Output a header
             saying our text contents are a delta. */
          FUNC1(FUNC11(&delta_file, &textlen, compare_root,
                              compare_path, eb->fs_root, path, pool));
          FUNC30(
            headers, SVN_REPOS_DUMPFILE_TEXT_DELTA, "true");

          if (compare_root)
            {
              FUNC1(FUNC18(&checksum, svn_checksum_md5,
                                           compare_root, compare_path,
                                           FALSE, pool));
              hex_digest = FUNC12(checksum, pool);
              if (hex_digest)
                FUNC30(
                  headers, SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_MD5, hex_digest);

              FUNC1(FUNC18(&checksum, svn_checksum_sha1,
                                           compare_root, compare_path,
                                           FALSE, pool));
              hex_digest = FUNC12(checksum, pool);
              if (hex_digest)
                FUNC30(
                  headers, SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_SHA1, hex_digest);
            }
        }
      else
        {
          /* Just fetch the length of the file. */
          FUNC1(FUNC20(&textlen, eb->fs_root, path, pool));
        }

      FUNC1(FUNC18(&checksum, svn_checksum_md5,
                                   eb->fs_root, path, FALSE, pool));
      hex_digest = FUNC12(checksum, pool);
      if (hex_digest)
        FUNC30(
          headers, SVN_REPOS_DUMPFILE_TEXT_CONTENT_MD5, hex_digest);

      FUNC1(FUNC18(&checksum, svn_checksum_sha1,
                                   eb->fs_root, path, FALSE, pool));
      hex_digest = FUNC12(checksum, pool);
      if (hex_digest)
        FUNC30(
          headers, SVN_REPOS_DUMPFILE_TEXT_CONTENT_SHA1, hex_digest);
    }

  /* 'Content-length:' is the last header before we dump the content,
     and is the sum of the text and prop contents lengths.  We write
     this only for the benefit of non-Subversion RFC-822 parsers. */
  FUNC1(FUNC29(eb->stream, headers,
                                      must_dump_props ? propstring : NULL,
                                      must_dump_text,
                                      must_dump_text ? textlen : 0,
                                      TRUE /*content_length_always*/,
                                      pool));

  /* Dump text content */
  if (must_dump_text && (kind == svn_node_file))
    {
      svn_stream_t *contents;

      if (delta_file)
        {
          /* Make sure to close the underlying file when the stream is
             closed. */
          contents = FUNC36(delta_file, FALSE, pool);
        }
      else
        FUNC1(FUNC19(&contents, eb->fs_root, path, pool));

      FUNC1(FUNC34(contents, FUNC35(eb->stream, pool),
                               NULL, NULL, pool));
    }

  len = 2;
  return FUNC38(eb->stream, "\n\n", &len); /* ### needed? */
}