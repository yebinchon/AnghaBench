
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int boolean_t ;


 scalar_t__ vn_matchops (int *,int ) ;
 int zfsctl_ops_root ;
 int zfsctl_ops_shares_dir ;
 int zfsctl_ops_snapdir ;
 int zfsctl_ops_snapshot ;

boolean_t
zfsctl_is_node(vnode_t *vp)
{
 return (vn_matchops(vp, zfsctl_ops_root) ||
     vn_matchops(vp, zfsctl_ops_snapdir) ||
     vn_matchops(vp, zfsctl_ops_snapshot) ||
     vn_matchops(vp, zfsctl_ops_shares_dir));

}
