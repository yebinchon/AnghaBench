
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_node_relation_t ;
typedef int svn_fs_id_t ;


 scalar_t__ svn_fs_fs__id_check_related (int const*,int const*) ;
 scalar_t__ svn_fs_fs__id_eq (int const*,int const*) ;
 int svn_fs_node_common_ancestor ;
 int svn_fs_node_unchanged ;
 int svn_fs_node_unrelated ;

svn_fs_node_relation_t
svn_fs_fs__id_compare(const svn_fs_id_t *a,
                      const svn_fs_id_t *b)
{
  if (svn_fs_fs__id_eq(a, b))
    return svn_fs_node_unchanged;
  return (svn_fs_fs__id_check_related(a, b) ? svn_fs_node_common_ancestor
                                            : svn_fs_node_unrelated);
}
