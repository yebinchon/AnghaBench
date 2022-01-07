
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
struct get_dir_baton_t {scalar_t__ is_directory; int result_pool; int ret_props; } ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_NOT_DIRECTORY ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_hash_sets (int ,char const*,int ) ;
 char* svn_ra_serf__svnname_from_wirename (char const*,char const*,int ) ;
 int svn_string_dup (TYPE_1__ const*,int ) ;

__attribute__((used)) static svn_error_t *
get_dir_props_cb(void *baton,
                 const char *path,
                 const char *ns,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *scratch_pool)
{
  struct get_dir_baton_t *db = baton;
  const char *propname;

  propname = svn_ra_serf__svnname_from_wirename(ns, name, db->result_pool);
  if (propname)
    {
      svn_hash_sets(db->ret_props, propname,
                    svn_string_dup(value, db->result_pool));
      return SVN_NO_ERROR;
    }

  if (!db->is_directory)
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
