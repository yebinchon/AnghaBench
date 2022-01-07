
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_5__ {TYPE_1__* editor; int authz_read_baton; int (* authz_read_func ) (int *,int *,char const*,int ,int *) ;int t_root; scalar_t__ send_copyfrom_args; int repos; } ;
typedef TYPE_2__ report_baton_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int (* add_file ) (char const*,void*,char const*,int ,int *,void**) ;} ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char*,char const*,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 (int *,int *,char const*,int ,int *) ;
 int stub2 (char const*,void*,char const*,int ,int *,void**) ;
 int * svn_error_trace (int ) ;
 int svn_fs_closest_copy (int **,char const**,int ,char const*,int *) ;
 int svn_fs_copied_from (int *,char const**,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int *,int ,int *) ;
 int * svn_repos_fs (int ) ;

__attribute__((used)) static svn_error_t *
add_file_smartly(report_baton_t *b,
                 const char *path,
                 void *parent_baton,
                 const char *o_path,
                 void **new_file_baton,
                 const char **copyfrom_path,
                 svn_revnum_t *copyfrom_rev,
                 apr_pool_t *pool)
{

  svn_fs_t *fs = svn_repos_fs(b->repos);
  svn_fs_root_t *closest_copy_root = ((void*)0);
  const char *closest_copy_path = ((void*)0);


  *copyfrom_path = ((void*)0);
  *copyfrom_rev = SVN_INVALID_REVNUM;

  if (b->send_copyfrom_args)
    {




      if (*o_path != '/')
        o_path = apr_pstrcat(pool, "/", o_path, SVN_VA_NULL);

      SVN_ERR(svn_fs_closest_copy(&closest_copy_root, &closest_copy_path,
                                  b->t_root, o_path, pool));
      if (closest_copy_root != ((void*)0))
        {



          if (strcmp(closest_copy_path, o_path) == 0)
            {
              SVN_ERR(svn_fs_copied_from(copyfrom_rev, copyfrom_path,
                                         closest_copy_root, closest_copy_path,
                                         pool));
              if (b->authz_read_func)
                {
                  svn_boolean_t allowed;
                  svn_fs_root_t *copyfrom_root;
                  SVN_ERR(svn_fs_revision_root(&copyfrom_root, fs,
                                               *copyfrom_rev, pool));
                  SVN_ERR(b->authz_read_func(&allowed, copyfrom_root,
                                             *copyfrom_path, b->authz_read_baton,
                                             pool));
                  if (! allowed)
                    {
                      *copyfrom_path = ((void*)0);
                      *copyfrom_rev = SVN_INVALID_REVNUM;
                    }
                }
            }
        }
    }

  return svn_error_trace(b->editor->add_file(path, parent_baton,
                                             *copyfrom_path, *copyfrom_rev,
                                             pool, new_file_baton));
}
