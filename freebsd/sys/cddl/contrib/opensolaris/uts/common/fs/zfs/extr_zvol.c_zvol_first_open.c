
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zv_flags; int zv_name; int zv_zilog; int zv_dn; int zv_volblocksize; int * zv_objset; } ;
typedef TYPE_1__ zvol_state_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
struct TYPE_7__ {int doi_data_block_size; } ;
typedef TYPE_2__ dmu_object_info_t ;


 int ASSERT (int) ;
 int B_TRUE ;
 int DMU_OST_ZVOL ;
 int VERIFY (int) ;
 int ZVOL_OBJ ;
 int ZVOL_RDONLY ;
 int ZVOL_ZAP_OBJ ;
 int dmu_object_info (int *,int ,TYPE_2__*) ;
 int dmu_objset_disown (int *,int ) ;
 scalar_t__ dmu_objset_is_snapshot (int *) ;
 int dmu_objset_own (int ,int ,int ,int ,int **) ;
 int dmu_objset_spa (int *) ;
 int dnode_hold (int *,int ,int ,int *) ;
 scalar_t__ dsl_prop_get_integer (int ,char*,scalar_t__*,int *) ;
 int spa_writeable (int ) ;
 int zap_lookup (int *,int ,char*,int,int,scalar_t__*) ;
 int zil_open (int *,int ) ;
 int zvol_get_data ;
 int zvol_size_changed (TYPE_1__*,scalar_t__) ;
 int zvol_tag ;

int
zvol_first_open(zvol_state_t *zv)
{
 dmu_object_info_t doi;
 objset_t *os;
 uint64_t volsize;
 int error;
 uint64_t readonly;


 error = dmu_objset_own(zv->zv_name, DMU_OST_ZVOL, B_TRUE,
     zvol_tag, &os);
 if (error)
  return (error);

 zv->zv_objset = os;
 error = zap_lookup(os, ZVOL_ZAP_OBJ, "size", 8, 1, &volsize);
 if (error) {
  ASSERT(error == 0);
  dmu_objset_disown(os, zvol_tag);
  return (error);
 }


 error = dmu_object_info(os, ZVOL_OBJ, &doi);
 if (error) {
  ASSERT(error == 0);
  dmu_objset_disown(os, zvol_tag);
  return (error);
 }
 zv->zv_volblocksize = doi.doi_data_block_size;

 error = dnode_hold(os, ZVOL_OBJ, zvol_tag, &zv->zv_dn);
 if (error) {
  dmu_objset_disown(os, zvol_tag);
  return (error);
 }

 zvol_size_changed(zv, volsize);
 zv->zv_zilog = zil_open(os, zvol_get_data);

 VERIFY(dsl_prop_get_integer(zv->zv_name, "readonly", &readonly,
     ((void*)0)) == 0);
 if (readonly || dmu_objset_is_snapshot(os) ||
     !spa_writeable(dmu_objset_spa(os)))
  zv->zv_flags |= ZVOL_RDONLY;
 else
  zv->zv_flags &= ~ZVOL_RDONLY;
 return (error);
}
