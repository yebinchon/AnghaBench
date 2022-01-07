
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_node_relation_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int base_node_id (int const**,TYPE_1__*,char const*,int *) ;
 int svn_fs_base__id_compare (int const*,int const*) ;
 int svn_fs_node_unrelated ;

__attribute__((used)) static svn_error_t *
base_node_relation(svn_fs_node_relation_t *relation,
                   svn_fs_root_t *root_a, const char *path_a,
                   svn_fs_root_t *root_b, const char *path_b,
                   apr_pool_t *pool)
{
  const svn_fs_id_t *id_a, *id_b;


  if (root_a->fs != root_b->fs)
    {
      *relation = svn_fs_node_unrelated;
      return SVN_NO_ERROR;
    }


  SVN_ERR(base_node_id(&id_a, root_a, path_a, pool));
  SVN_ERR(base_node_id(&id_b, root_b, path_b, pool));

  *relation = svn_fs_base__id_compare(id_a, id_b);

  return SVN_NO_ERROR;
}
