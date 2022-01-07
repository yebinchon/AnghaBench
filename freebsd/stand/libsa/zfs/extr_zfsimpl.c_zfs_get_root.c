
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int spa_mos; } ;
typedef TYPE_1__ spa_t ;
typedef int root ;
typedef int props ;
struct TYPE_10__ {scalar_t__ dd_head_dataset_obj; } ;
typedef TYPE_2__ dsl_dir_phys_t ;
struct TYPE_11__ {int dn_bonus; } ;
typedef TYPE_3__ dnode_phys_t ;
typedef int bootfs ;


 scalar_t__ DMU_POOL_DIRECTORY_OBJECT ;
 char* DMU_POOL_PROPS ;
 char* DMU_POOL_ROOT_DATASET ;
 int EIO ;
 scalar_t__ objset_get_dnode (TYPE_1__ const*,int *,scalar_t__,TYPE_3__*) ;
 int printf (char*) ;
 scalar_t__ zap_lookup (TYPE_1__ const*,TYPE_3__*,char*,int,int,scalar_t__*) ;

__attribute__((used)) static int
zfs_get_root(const spa_t *spa, uint64_t *objid)
{
 dnode_phys_t dir, propdir;
 uint64_t props, bootfs, root;

 *objid = 0;




 if (objset_get_dnode(spa, &spa->spa_mos, DMU_POOL_DIRECTORY_OBJECT, &dir)) {
  printf("ZFS: can't read MOS object directory\n");
  return (EIO);
 }




 if (zap_lookup(spa, &dir, DMU_POOL_PROPS, sizeof (props), 1, &props) == 0
      && objset_get_dnode(spa, &spa->spa_mos, props, &propdir) == 0
      && zap_lookup(spa, &propdir, "bootfs", sizeof (bootfs), 1, &bootfs) == 0
      && bootfs != 0)
 {
  *objid = bootfs;
  return (0);
 }



 if (zap_lookup(spa, &dir, DMU_POOL_ROOT_DATASET, sizeof (root), 1, &root)
     || objset_get_dnode(spa, &spa->spa_mos, root, &dir)) {
  printf("ZFS: can't find root dsl_dir\n");
  return (EIO);
 }





 dsl_dir_phys_t *dd = (dsl_dir_phys_t *) &dir.dn_bonus;
 *objid = dd->dd_head_dataset_obj;
 return (0);
}
