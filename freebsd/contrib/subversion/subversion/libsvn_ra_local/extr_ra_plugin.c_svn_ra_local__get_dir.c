
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_10__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_11__ {int uuid; int fs; TYPE_1__* fs_path; } ;
typedef TYPE_3__ svn_ra_local__session_baton_t ;
typedef int svn_fs_root_t ;
struct TYPE_12__ {scalar_t__ kind; } ;
typedef TYPE_4__ svn_fs_dirent_t ;
typedef int svn_error_t ;
struct TYPE_13__ {scalar_t__ kind; scalar_t__ last_author; int time; int created_rev; int has_props; int size; } ;
typedef TYPE_5__ svn_dirent_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_9__ {int data; } ;


 int SVN_DIRENT_CREATED_REV ;
 int SVN_DIRENT_HAS_PROPS ;
 int SVN_DIRENT_KIND ;
 int SVN_DIRENT_LAST_AUTHOR ;
 int SVN_DIRENT_SIZE ;
 int SVN_DIRENT_TIME ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_FILESIZE ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 scalar_t__ apr_pstrdup (int *,scalar_t__) ;
 int get_node_props (int **,int *,char const*,int ,int *,int *) ;
 TYPE_5__* svn_dirent_create (int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_fs_dir_entries (int **,int *,char const*,int *) ;
 int svn_fs_file_length (int *,int *,char const*,int *) ;
 int svn_fs_node_has_props (int *,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_fs_youngest_rev (int *,int ,int *) ;
 char* svn_fspath__join (int ,char const*,int *) ;
 int svn_hash_sets (int *,char const*,TYPE_5__*) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_repos_get_committed_info (int *,char const**,scalar_t__*,int *,char const*,int *) ;
 int svn_time_from_cstring (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__get_dir(svn_ra_session_t *session,
                      apr_hash_t **dirents,
                      svn_revnum_t *fetched_rev,
                      apr_hash_t **props,
                      const char *path,
                      svn_revnum_t revision,
                      apr_uint32_t dirent_fields,
                      apr_pool_t *pool)
{
  svn_fs_root_t *root;
  svn_revnum_t youngest_rev;
  apr_hash_t *entries;
  apr_hash_index_t *hi;
  svn_ra_local__session_baton_t *sess = session->priv;
  const char *abs_path = svn_fspath__join(sess->fs_path->data, path, pool);


  if (! SVN_IS_VALID_REVNUM(revision))
    {
      SVN_ERR(svn_fs_youngest_rev(&youngest_rev, sess->fs, pool));
      SVN_ERR(svn_fs_revision_root(&root, sess->fs, youngest_rev, pool));
      if (fetched_rev != ((void*)0))
        *fetched_rev = youngest_rev;
    }
  else
    SVN_ERR(svn_fs_revision_root(&root, sess->fs, revision, pool));

  if (dirents)
    {
      apr_pool_t *iterpool = svn_pool_create(pool);

      SVN_ERR(svn_fs_dir_entries(&entries, root, abs_path, pool));



      *dirents = apr_hash_make(pool);
      for (hi = apr_hash_first(pool, entries); hi; hi = apr_hash_next(hi))
        {
          const void *key;
          void *val;
          const char *datestring, *entryname, *fullpath;
          svn_fs_dirent_t *fs_entry;
          svn_dirent_t *entry = svn_dirent_create(pool);

          svn_pool_clear(iterpool);

          apr_hash_this(hi, &key, ((void*)0), &val);
          entryname = (const char *) key;
          fs_entry = (svn_fs_dirent_t *) val;

          fullpath = svn_dirent_join(abs_path, entryname, iterpool);

          if (dirent_fields & SVN_DIRENT_KIND)
            {

              entry->kind = fs_entry->kind;
            }

          if (dirent_fields & SVN_DIRENT_SIZE)
            {

              if (fs_entry->kind == svn_node_dir)
                entry->size = SVN_INVALID_FILESIZE;
              else
                SVN_ERR(svn_fs_file_length(&(entry->size), root,
                                           fullpath, iterpool));
            }

          if (dirent_fields & SVN_DIRENT_HAS_PROPS)
            {

              SVN_ERR(svn_fs_node_has_props(&entry->has_props,
                                            root, fullpath,
                                            iterpool));
            }

          if ((dirent_fields & SVN_DIRENT_TIME)
              || (dirent_fields & SVN_DIRENT_LAST_AUTHOR)
              || (dirent_fields & SVN_DIRENT_CREATED_REV))
            {

              SVN_ERR(svn_repos_get_committed_info(&(entry->created_rev),
                                                   &datestring,
                                                   &(entry->last_author),
                                                   root, fullpath, iterpool));
              if (datestring)
                SVN_ERR(svn_time_from_cstring(&(entry->time), datestring,
                                              pool));
              if (entry->last_author)
                entry->last_author = apr_pstrdup(pool, entry->last_author);
            }


          svn_hash_sets(*dirents, entryname, entry);
        }
      svn_pool_destroy(iterpool);
    }


  if (props)
    SVN_ERR(get_node_props(props, root, abs_path, sess->uuid, pool, pool));

  return SVN_NO_ERROR;
}
