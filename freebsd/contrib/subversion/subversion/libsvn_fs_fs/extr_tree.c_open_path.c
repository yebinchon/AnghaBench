
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int len; char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_fs_t ;
struct TYPE_16__ {int rev; int txn; scalar_t__ is_txn_root; int * fs; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_17__ {int copy_src_path; void* copy_inherit; int * node; } ;
typedef TYPE_3__ parent_path_t ;
typedef int dag_node_t ;
typedef void* copy_id_inherit_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_W (int ,char const*) ;
 int SVN_FS__ERR_NOT_DIRECTORY (int *,char const*) ;
 int * SVN_FS__NOT_FOUND (TYPE_2__*,char const*) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_psprintf (int *,int ,char const*,int ) ;
 int apr_pstrdup (int *,char const*) ;
 int assert (int ) ;
 void* copy_id_inherit_self ;
 int dag_node_cache_get (int **,TYPE_2__*,char const*,int *) ;
 int dag_node_cache_set (TYPE_2__*,char const*,int *,int *) ;
 int get_copy_inheritance (void**,char const**,int *,TYPE_3__*,int *) ;
 TYPE_3__* make_parent_path (int *,char*,TYPE_3__*,int *) ;
 int open_path_allow_null ;
 int open_path_last_optional ;
 int open_path_node_only ;
 int open_path_uncached ;
 int root_node (int **,TYPE_2__*,int *) ;
 int strlen (char const*) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_fs__is_canonical_abspath (char const*) ;
 char* svn_fs__next_entry_name (char const**,char const*,int *) ;
 scalar_t__ svn_fs_fs__dag_node_kind (int *) ;
 int svn_fs_fs__dag_open (int **,int *,char*,int *,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;
 int try_match_last_node (int **,TYPE_2__*,char const*,int,int *) ;

__attribute__((used)) static svn_error_t *
open_path(parent_path_t **parent_path_p,
          svn_fs_root_t *root,
          const char *path,
          int flags,
          svn_boolean_t is_txn_path,
          apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  dag_node_t *here = ((void*)0);
  parent_path_t *parent_path;
  const char *rest = ((void*)0);
  apr_pool_t *iterpool = svn_pool_create(pool);





  svn_stringbuf_t *path_so_far = svn_stringbuf_create(path, pool);
  apr_size_t path_len = path_so_far->len;





  assert(svn_fs__is_canonical_abspath(path));
  path_so_far->len = 0;
  if (flags & open_path_node_only)
    {
      const char *directory;
      if (!root->is_txn_root)
        {
          dag_node_t *node;
          SVN_ERR(try_match_last_node(&node, root, path, path_len, iterpool));


          if (node)
            {

              svn_pool_destroy(iterpool);

              parent_path = make_parent_path(node, 0, 0, pool);
              parent_path->copy_inherit = copy_id_inherit_self;
              *parent_path_p = parent_path;

              return SVN_NO_ERROR;
            }
        }




      directory = svn_dirent_dirname(path, pool);
      if (directory[1] != 0)
        {
          SVN_ERR(dag_node_cache_get(&here, root, directory, pool));


          if (here)
            {
              apr_size_t dirname_len = strlen(directory);
              path_so_far->len = dirname_len;
              rest = path + dirname_len + 1;
            }
        }
    }


  if (!here)
    {


      SVN_ERR(root_node(&here, root, pool));
      rest = path + 1;
    }

  path_so_far->data[path_so_far->len] = '\0';
  parent_path = make_parent_path(here, 0, 0, pool);
  parent_path->copy_inherit = copy_id_inherit_self;






  for (;;)
    {
      const char *next;
      char *entry;
      dag_node_t *child;

      svn_pool_clear(iterpool);


      entry = svn_fs__next_entry_name(&next, rest, pool);


      path_so_far->data[path_so_far->len] = '/';
      path_so_far->len += strlen(entry) + 1;
      path_so_far->data[path_so_far->len] = '\0';

      if (*entry == '\0')
        {




          child = here;
        }
      else
        {
          copy_id_inherit_t inherit;
          const char *copy_path = ((void*)0);
          dag_node_t *cached_node = ((void*)0);






          if (next || !(flags & open_path_uncached))
            SVN_ERR(dag_node_cache_get(&cached_node, root, path_so_far->data,
                                       pool));
          if (cached_node)
            child = cached_node;
          else
            SVN_ERR(svn_fs_fs__dag_open(&child, here, entry, pool, iterpool));


          if (child == ((void*)0))
            {




              if ((flags & open_path_last_optional)
                  && (! next || *next == '\0'))
                {
                  parent_path = make_parent_path(((void*)0), entry, parent_path,
                                                 pool);
                  break;
                }
              else if (flags & open_path_allow_null)
                {
                  parent_path = ((void*)0);
                  break;
                }
              else
                {


                  return SVN_FS__NOT_FOUND(root, path);
                }
            }

          if (flags & open_path_node_only)
            {

              parent_path->node = child;
            }
          else
            {

              parent_path = make_parent_path(child, entry, parent_path, pool);
              if (is_txn_path)
                {
                  SVN_ERR(get_copy_inheritance(&inherit, &copy_path, fs,
                                               parent_path, iterpool));
                  parent_path->copy_inherit = inherit;
                  parent_path->copy_src_path = apr_pstrdup(pool, copy_path);
                }
            }


          if (! cached_node)
            SVN_ERR(dag_node_cache_set(root, path_so_far->data, child,
                                       iterpool));
        }


      if (! next)
        break;


      if (svn_fs_fs__dag_node_kind(child) != svn_node_dir)
        {
          const char *msg;




          if (flags & open_path_allow_null)
            {
              parent_path = ((void*)0);
              break;
            }


          msg = root->is_txn_root
              ? apr_psprintf(iterpool,
                             _("Failure opening '%s' in transaction '%s'"),
                             path, root->txn)
              : apr_psprintf(iterpool,
                             _("Failure opening '%s' in revision %ld"),
                             path, root->rev);
          SVN_ERR_W(SVN_FS__ERR_NOT_DIRECTORY(fs, path_so_far->data), msg);
        }

      rest = next;
      here = child;
    }

  svn_pool_destroy(iterpool);
  *parent_path_p = parent_path;
  return SVN_NO_ERROR;
}
