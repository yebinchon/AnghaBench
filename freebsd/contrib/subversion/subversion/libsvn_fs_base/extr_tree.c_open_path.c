
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
struct TYPE_21__ {int * fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_23__ {int copy_src_path; int copy_inherit; } ;
typedef TYPE_3__ parent_path_t ;
typedef int dag_node_t ;
typedef int copy_id_inherit_t ;
typedef int apr_pool_t ;


 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_W (int ,int ) ;
 int SVN_FS__ERR_NOT_DIRECTORY (int *,char const*) ;
 TYPE_2__* SVN_FS__NOT_FOUND (TYPE_1__*,char const*) ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_psprintf (int *,int ,char const*) ;
 int apr_pstrdup (int *,char const*) ;
 int copy_id_inherit_self ;
 int * dag_node_cache_get (TYPE_1__*,char const*,int *) ;
 int dag_node_cache_set (TYPE_1__*,char const*,int *) ;
 TYPE_2__* get_copy_inheritance (int *,char const**,int *,TYPE_3__*,char const*,int *,int *) ;
 TYPE_3__* make_parent_path (int *,char*,TYPE_3__*,int *) ;
 int open_path_last_optional ;
 TYPE_2__* root_node (int **,TYPE_1__*,int *,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 char* svn_fs__next_entry_name (char const**,char const*,int *) ;
 scalar_t__ svn_fs_base__dag_node_kind (int *) ;
 TYPE_2__* svn_fs_base__dag_open (int **,int *,char*,int *,int *) ;
 char* svn_fspath__join (char const*,char*,int *) ;
 scalar_t__ svn_node_dir ;

__attribute__((used)) static svn_error_t *
open_path(parent_path_t **parent_path_p,
          svn_fs_root_t *root,
          const char *path,
          int flags,
          const char *txn_id,
          trail_t *trail,
          apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  dag_node_t *here;
  parent_path_t *parent_path;
  const char *rest;
  const char *canon_path = svn_fs__canonicalize_abspath(path, pool);
  const char *path_so_far = "/";



  SVN_ERR(root_node(&here, root, trail, pool));
  parent_path = make_parent_path(here, 0, 0, pool);
  parent_path->copy_inherit = copy_id_inherit_self;

  rest = canon_path + 1;






  for (;;)
    {
      const char *next;
      char *entry;
      dag_node_t *child;


      entry = svn_fs__next_entry_name(&next, rest, pool);


      path_so_far = svn_fspath__join(path_so_far, entry, pool);

      if (*entry == '\0')
        {




          child = here;
        }
      else
        {
          copy_id_inherit_t inherit;
          const char *copy_path = ((void*)0);
          svn_error_t *err = SVN_NO_ERROR;
          dag_node_t *cached_node;




          cached_node = dag_node_cache_get(root, path_so_far, pool);
          if (cached_node)
            child = cached_node;
          else
            err = svn_fs_base__dag_open(&child, here, entry, trail, pool);


          if (err && err->apr_err == SVN_ERR_FS_NOT_FOUND)
            {




              svn_error_clear(err);

              if ((flags & open_path_last_optional)
                  && (! next || *next == '\0'))
                {
                  parent_path = make_parent_path(((void*)0), entry, parent_path,
                                                 pool);
                  break;
                }
              else
                {


                  return SVN_FS__NOT_FOUND(root, path);
                }
            }


          SVN_ERR(err);


          parent_path = make_parent_path(child, entry, parent_path, pool);
          if (txn_id)
            {
              SVN_ERR(get_copy_inheritance(&inherit, &copy_path,
                                           fs, parent_path, txn_id,
                                           trail, pool));
              parent_path->copy_inherit = inherit;
              parent_path->copy_src_path = apr_pstrdup(pool, copy_path);
            }


          if (! cached_node)
            dag_node_cache_set(root, path_so_far, child);
        }


      if (! next)
        break;


      if (svn_fs_base__dag_node_kind(child) != svn_node_dir)
        SVN_ERR_W(SVN_FS__ERR_NOT_DIRECTORY(fs, path_so_far),
                  apr_psprintf(pool, _("Failure opening '%s'"), path));

      rest = next;
      here = child;
    }

  *parent_path_p = parent_path;
  return SVN_NO_ERROR;
}
