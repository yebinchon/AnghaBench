
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int * id; int * fresh_root_predecessor_id; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_fs_fs__id_rev (int const*) ;

svn_error_t *
svn_fs_fs__dag_get_revision(svn_revnum_t *rev,
                            dag_node_t *node,
                            apr_pool_t *pool)
{



  const svn_fs_id_t *correct_id = node->fresh_root_predecessor_id
    ? node->fresh_root_predecessor_id : node->id;


  *rev = svn_fs_fs__id_rev(correct_id);

  return SVN_NO_ERROR;
}
