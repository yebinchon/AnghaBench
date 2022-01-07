
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_7__ {scalar_t__ rev; TYPE_1__* fs; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int dag_node_cache; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int dag_node_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {TYPE_3__* fsap_data; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * cache_lookup_last_path (int ,char const*,int ) ;
 int dag_node_cache_set (TYPE_2__*,char const*,int *,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_fs_fs__dag_check_mutable (int *) ;
 char* svn_fs_fs__dag_get_created_path (int *) ;
 int svn_fs_fs__dag_get_revision (scalar_t__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
try_match_last_node(dag_node_t **node_p,
                    svn_fs_root_t *root,
                    const char *path,
                    apr_size_t path_len,
                    apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = root->fs->fsap_data;



  dag_node_t *node
    = cache_lookup_last_path(ffd->dag_node_cache, path, path_len);


  if (node && !svn_fs_fs__dag_check_mutable(node))
    {



      const char *created_path
        = svn_fs_fs__dag_get_created_path(node);
      svn_revnum_t revision;
      SVN_ERR(svn_fs_fs__dag_get_revision(&revision, node, scratch_pool));


      if (revision == root->rev && strcmp(created_path, path) == 0)
        {

          SVN_ERR(dag_node_cache_set(root, path, node, scratch_pool));

          *node_p = node;
          return SVN_NO_ERROR;
        }
    }

  *node_p = ((void*)0);
  return SVN_NO_ERROR;
}
