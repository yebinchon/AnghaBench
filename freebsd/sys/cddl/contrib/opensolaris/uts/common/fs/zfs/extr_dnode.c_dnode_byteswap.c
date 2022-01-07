
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_6__ {scalar_t__ dn_type; scalar_t__ dn_datablkszsec; scalar_t__ dn_bonuslen; int dn_extra_slots; scalar_t__ dn_indblkshift; int dn_nblkptr; int dn_flags; scalar_t__ dn_bonus; int dn_bonustype; void* dn_used; void* dn_maxblkid; int dn_blkptr; } ;
typedef TYPE_1__ dnode_phys_t ;
typedef size_t dmu_object_byteswap_t ;
typedef int blkptr_t ;
struct TYPE_7__ {int (* ob_func ) (scalar_t__,size_t) ;} ;


 int ASSERT (int) ;
 void* BSWAP_16 (scalar_t__) ;
 void* BSWAP_64 (void*) ;
 int BSWAP_8 (int) ;
 size_t DMU_OT_BYTESWAP (int ) ;
 int DMU_OT_IS_VALID (int ) ;
 scalar_t__ DMU_OT_NONE ;
 int DNODE_FLAG_SPILL_BLKPTR ;
 int DN_MAX_NBLKPTR ;
 int DN_SLOTS_TO_BONUSLEN (int) ;
 int DN_SPILL_BLKPTR (TYPE_1__*) ;
 scalar_t__ SPA_MAXBLOCKSHIFT ;
 int byteswap_uint64_array (int ,int) ;
 int bzero (TYPE_1__*,int) ;
 TYPE_3__* dmu_ot_byteswap ;
 int stub1 (scalar_t__,size_t) ;

void
dnode_byteswap(dnode_phys_t *dnp)
{
 uint64_t *buf64 = (void*)&dnp->dn_blkptr;
 int i;

 if (dnp->dn_type == DMU_OT_NONE) {
  bzero(dnp, sizeof (dnode_phys_t));
  return;
 }

 dnp->dn_datablkszsec = BSWAP_16(dnp->dn_datablkszsec);
 dnp->dn_bonuslen = BSWAP_16(dnp->dn_bonuslen);
 dnp->dn_extra_slots = BSWAP_8(dnp->dn_extra_slots);
 dnp->dn_maxblkid = BSWAP_64(dnp->dn_maxblkid);
 dnp->dn_used = BSWAP_64(dnp->dn_used);





 ASSERT(dnp->dn_indblkshift <= SPA_MAXBLOCKSHIFT);
 ASSERT(dnp->dn_nblkptr <= DN_MAX_NBLKPTR);
 for (i = 0; i < dnp->dn_nblkptr * sizeof (blkptr_t)/8; i++)
  buf64[i] = BSWAP_64(buf64[i]);






 if (dnp->dn_bonuslen != 0) {







  int off = (dnp->dn_nblkptr-1) * sizeof (blkptr_t);
  int slots = dnp->dn_extra_slots + 1;
  size_t len = DN_SLOTS_TO_BONUSLEN(slots) - off;
  ASSERT(DMU_OT_IS_VALID(dnp->dn_bonustype));
  dmu_object_byteswap_t byteswap =
      DMU_OT_BYTESWAP(dnp->dn_bonustype);
  dmu_ot_byteswap[byteswap].ob_func(dnp->dn_bonus + off, len);
 }


 if (dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR)
  byteswap_uint64_array(DN_SPILL_BLKPTR(dnp), sizeof (blkptr_t));

}
