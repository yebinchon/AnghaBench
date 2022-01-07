
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
typedef int uint64_t ;
typedef int dsl_scan_t ;
struct TYPE_8__ {int ds_object; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_9__ {int dn_nblkptr; int dn_flags; int * dn_blkptr; scalar_t__ dn_nlevels; } ;
typedef TYPE_2__ dnode_phys_t ;
typedef int dmu_tx_t ;
typedef int dmu_objset_type_t ;


 int DMU_SPILL_BLKID ;
 int DNODE_FLAG_SPILL_BLKPTR ;
 int * DN_SPILL_BLKPTR (TYPE_2__*) ;
 int SET_BOOKMARK (int *,int ,int ,scalar_t__,int) ;
 int dsl_scan_visitbp (int *,int *,TYPE_2__*,TYPE_1__*,int *,int ,int *) ;

__attribute__((used)) static void
dsl_scan_visitdnode(dsl_scan_t *scn, dsl_dataset_t *ds,
    dmu_objset_type_t ostype, dnode_phys_t *dnp,
    uint64_t object, dmu_tx_t *tx)
{
 int j;

 for (j = 0; j < dnp->dn_nblkptr; j++) {
  zbookmark_phys_t czb;

  SET_BOOKMARK(&czb, ds ? ds->ds_object : 0, object,
      dnp->dn_nlevels - 1, j);
  dsl_scan_visitbp(&dnp->dn_blkptr[j],
      &czb, dnp, ds, scn, ostype, tx);
 }

 if (dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR) {
  zbookmark_phys_t czb;
  SET_BOOKMARK(&czb, ds ? ds->ds_object : 0, object,
      0, DMU_SPILL_BLKID);
  dsl_scan_visitbp(DN_SPILL_BLKPTR(dnp),
      &czb, dnp, ds, scn, ostype, tx);
 }
}
