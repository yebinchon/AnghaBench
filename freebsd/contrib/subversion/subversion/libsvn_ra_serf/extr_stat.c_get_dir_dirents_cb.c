
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
struct get_dir_baton_t {scalar_t__ is_directory; int supports_deadprop_count; int result_pool; int dirents; int path; } ;
struct fill_dirent_baton_t {int * supports_deadprop_count; int result_pool; scalar_t__ entry; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int apr_pstrdup (int ,char const*) ;
 int fill_dirent_propfunc (struct fill_dirent_baton_t*,char const*,char const*,char const*,TYPE_1__ const*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ svn_dirent_create (int ) ;
 int * svn_error_create (int ,int *,int ) ;
 char* svn_fspath__skip_ancestor (int ,char const*) ;
 scalar_t__ svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,int ,scalar_t__) ;
 char* svn_path_uri_decode (char const*,int *) ;

__attribute__((used)) static svn_error_t *
get_dir_dirents_cb(void *baton,
                   const char *path,
                   const char *ns,
                   const char *name,
                   const svn_string_t *value,
                   apr_pool_t *scratch_pool)
{
  struct get_dir_baton_t *db = baton;
  const char *relpath;

  relpath = svn_fspath__skip_ancestor(db->path, path);

  if (relpath && relpath[0] != '\0')
    {
      struct fill_dirent_baton_t fdb;

      relpath = svn_path_uri_decode(relpath, scratch_pool);
      fdb.entry = svn_hash_gets(db->dirents, relpath);

      if (!fdb.entry)
        {
          fdb.entry = svn_dirent_create(db->result_pool);
          svn_hash_sets(db->dirents,
                        apr_pstrdup(db->result_pool, relpath),
                        fdb.entry);
        }

      fdb.result_pool = db->result_pool;
      fdb.supports_deadprop_count = &db->supports_deadprop_count;
      SVN_ERR(fill_dirent_propfunc(&fdb, path, ns, name, value, scratch_pool));
    }
  else if (relpath && !db->is_directory)
    {
      if (strcmp(ns, "DAV:") == 0 && strcmp(name, "resourcetype") == 0)
        {
          if (strcmp(value->data, "collection") != 0)
            {

              return svn_error_create(SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
                                      _("Can't get properties of non-directory"));
            }
          else
            db->is_directory = TRUE;
        }
    }

  return SVN_NO_ERROR;
}
