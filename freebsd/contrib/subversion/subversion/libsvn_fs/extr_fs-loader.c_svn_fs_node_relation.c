
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ fs; TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_fs_node_relation_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int (* node_relation ) (int *,TYPE_2__*,char const*,TYPE_2__*,char const*,int *) ;} ;


 int * SVN_NO_ERROR ;
 int stub1 (int *,TYPE_2__*,char const*,TYPE_2__*,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_fs_node_unrelated ;

svn_error_t *
svn_fs_node_relation(svn_fs_node_relation_t *relation,
                     svn_fs_root_t *root_a, const char *path_a,
                     svn_fs_root_t *root_b, const char *path_b,
                     apr_pool_t *scratch_pool)
{

  if (root_a->fs != root_b->fs)
    {
      *relation = svn_fs_node_unrelated;
      return SVN_NO_ERROR;
    }

  return svn_error_trace(root_a->vtable->node_relation(relation,
                                                       root_a, path_a,
                                                       root_b, path_b,
                                                       scratch_pool));
}
