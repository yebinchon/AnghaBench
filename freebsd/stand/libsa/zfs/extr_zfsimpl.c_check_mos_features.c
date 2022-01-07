
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_13__ {int spa_mos; } ;
typedef TYPE_1__ spa_t ;
typedef int objnum ;
struct TYPE_14__ {scalar_t__ dn_type; int dn_datablkszsec; } ;
typedef TYPE_2__ dnode_phys_t ;


 scalar_t__ DMU_OTN_ZAP_METADATA ;
 scalar_t__ DMU_OT_OBJECT_DIRECTORY ;
 int DMU_POOL_FEATURES_FOR_READ ;
 int EIO ;
 scalar_t__ ZBT_MICRO ;
 int check_feature ;
 scalar_t__ dnode_read (TYPE_1__ const*,TYPE_2__*,int ,scalar_t__,size_t) ;
 int fzap_list (TYPE_1__ const*,TYPE_2__*,int ) ;
 int mzap_list (TYPE_2__*,int ) ;
 int objset_get_dnode (TYPE_1__ const*,int *,scalar_t__,TYPE_2__*) ;
 int zap_lookup (TYPE_1__ const*,TYPE_2__*,int ,int,int,scalar_t__*) ;
 scalar_t__ zap_scratch ;

__attribute__((used)) static int
check_mos_features(const spa_t *spa)
{
 dnode_phys_t dir;
 uint64_t objnum, zap_type;
 size_t size;
 int rc;

 if ((rc = objset_get_dnode(spa, &spa->spa_mos, DMU_OT_OBJECT_DIRECTORY,
     &dir)) != 0)
  return (rc);
 if ((rc = zap_lookup(spa, &dir, DMU_POOL_FEATURES_FOR_READ,
     sizeof (objnum), 1, &objnum)) != 0) {




  return (0);
 }

 if ((rc = objset_get_dnode(spa, &spa->spa_mos, objnum, &dir)) != 0)
  return (rc);

 if (dir.dn_type != DMU_OTN_ZAP_METADATA)
  return (EIO);

 size = dir.dn_datablkszsec * 512;
 if (dnode_read(spa, &dir, 0, zap_scratch, size))
  return (EIO);

 zap_type = *(uint64_t *) zap_scratch;
 if (zap_type == ZBT_MICRO)
  rc = mzap_list(&dir, check_feature);
 else
  rc = fzap_list(spa, &dir, check_feature);

 return (rc);
}
