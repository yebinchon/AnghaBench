
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sa_attr_type_t ;
typedef int objset_t ;


 int ENOENT ;
 int MASTER_NODE_OBJ ;
 int ZFS_SA_ATTRS ;
 int ZPL_END ;
 int sa_setup (int *,int ,int ,int ,int **) ;
 int zap_lookup (int *,int ,int ,int,int,int *) ;
 int zfs_attr_table ;

__attribute__((used)) static int
zfs_sa_setup(objset_t *osp, sa_attr_type_t **sa_table)
{
 uint64_t sa_obj = 0;
 int error;

 error = zap_lookup(osp, MASTER_NODE_OBJ, ZFS_SA_ATTRS, 8, 1, &sa_obj);
 if (error != 0 && error != ENOENT)
  return (error);

 error = sa_setup(osp, sa_obj, zfs_attr_table, ZPL_END, sa_table);
 return (error);
}
