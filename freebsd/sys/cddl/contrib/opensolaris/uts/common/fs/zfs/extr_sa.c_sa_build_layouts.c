
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_12__ ;


typedef unsigned long long uint64_t ;
typedef int uint16_t ;
struct TYPE_30__ {scalar_t__ sa_force_spill; TYPE_1__* sa_attr_table; } ;
typedef TYPE_2__ sa_os_t ;
struct TYPE_31__ {int lot_num; } ;
typedef TYPE_3__ sa_lot_t ;
struct TYPE_32__ {int* sa_lengths; int sa_magic; } ;
typedef TYPE_4__ sa_hdr_phys_t ;
struct TYPE_33__ {TYPE_8__* sa_os; int * sa_spill_tab; TYPE_12__* sa_spill; int * sa_bonus_tab; TYPE_12__* sa_bonus; } ;
typedef TYPE_5__ sa_handle_t ;
struct TYPE_34__ {size_t sa_attr; int sa_length; int sa_size; int sa_data; int sa_data_func; void* sa_addr; } ;
typedef TYPE_6__ sa_bulk_attr_t ;
typedef scalar_t__ sa_buf_type_t ;
typedef size_t sa_attr_type_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ dmu_object_type_t ;
typedef scalar_t__ boolean_t ;
typedef int blkptr_t ;
struct TYPE_35__ {TYPE_2__* os_sa; } ;
struct TYPE_29__ {scalar_t__ sa_length; } ;
struct TYPE_28__ {int db_size; scalar_t__ db_data; } ;


 int ASSERT (int) ;
 int BUF_SPACE_NEEDED (int,int) ;
 scalar_t__ DMU_OT_SA ;
 scalar_t__ DMU_OT_ZNODE ;
 int DN_BONUS_SIZE (int) ;
 int EFBIG ;
 int IS_P2ALIGNED (int,int) ;
 int KM_SLEEP ;
 int MIN (int,int) ;
 scalar_t__ P2ROUNDUP (int,int) ;
 unsigned long long SA_ATTR_HASH (size_t) ;
 int SA_BLKPTR_SPACE ;
 scalar_t__ SA_BONUS ;
 scalar_t__ SA_BONUSTYPE_FROM_DB (TYPE_12__*) ;
 int SA_COPY_DATA (int ,int ,void*,int) ;
 int SA_MAGIC ;
 int SA_REGISTERED_LEN (TYPE_2__*,size_t) ;
 int SA_SET_HDR (TYPE_4__*,int,int) ;
 scalar_t__ SA_SPILL ;
 int SET_ERROR (int ) ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int VERIFY (int) ;
 int dmu_buf_rele (TYPE_12__*,int *) ;
 int dmu_buf_will_dirty (TYPE_12__*,int *) ;
 int dmu_object_dnsize_from_db (TYPE_12__*,int*) ;
 scalar_t__ dmu_rm_spill (TYPE_8__*,int ,int *) ;
 scalar_t__ dmu_set_bonus (TYPE_12__*,int,int *) ;
 scalar_t__ dmu_spill_hold_by_bonus (TYPE_12__*,int *,TYPE_12__**) ;
 size_t* kmem_alloc (int,int ) ;
 int kmem_free (size_t*,int) ;
 scalar_t__ sa_build_index (TYPE_5__*,scalar_t__) ;
 int sa_find_layout (TYPE_8__*,unsigned long long,size_t*,int,int *,TYPE_3__**) ;
 int sa_find_sizes (TYPE_2__*,TYPE_6__*,int,TYPE_12__*,scalar_t__,int,int*,int*,scalar_t__*) ;
 int sa_handle_object (TYPE_5__*) ;
 int sa_idx_tab_rele (TYPE_8__*,int *) ;
 scalar_t__ sa_resize_spill (TYPE_5__*,int,int *) ;

__attribute__((used)) static int
sa_build_layouts(sa_handle_t *hdl, sa_bulk_attr_t *attr_desc, int attr_count,
    dmu_tx_t *tx)
{
 sa_os_t *sa = hdl->sa_os->os_sa;
 uint64_t hash;
 sa_buf_type_t buftype;
 sa_hdr_phys_t *sahdr;
 void *data_start;
 int buf_space;
 sa_attr_type_t *attrs, *attrs_start;
 int i, lot_count;
 int dnodesize;
 int hdrsize;
 int spillhdrsize = 0;
 int used;
 dmu_object_type_t bonustype;
 sa_lot_t *lot;
 int len_idx;
 int spill_used;
 int bonuslen;
 boolean_t spilling;

 dmu_buf_will_dirty(hdl->sa_bonus, tx);
 bonustype = SA_BONUSTYPE_FROM_DB(hdl->sa_bonus);
 dmu_object_dnsize_from_db(hdl->sa_bonus, &dnodesize);
 bonuslen = DN_BONUS_SIZE(dnodesize);

 dmu_object_dnsize_from_db(hdl->sa_bonus, &dnodesize);
 bonuslen = DN_BONUS_SIZE(dnodesize);


 hdrsize = sa_find_sizes(sa, attr_desc, attr_count, hdl->sa_bonus,
     SA_BONUS, bonuslen, &i, &used, &spilling);

 if (used > SPA_OLD_MAXBLOCKSIZE)
  return (SET_ERROR(EFBIG));

 VERIFY(0 == dmu_set_bonus(hdl->sa_bonus, spilling ?
     MIN(bonuslen - sizeof (blkptr_t), used + hdrsize) :
     used + hdrsize, tx));

 ASSERT((bonustype == DMU_OT_ZNODE && spilling == 0) ||
     bonustype == DMU_OT_SA);


 if (spilling) {
  boolean_t dummy;

  if (hdl->sa_spill == ((void*)0)) {
   VERIFY(dmu_spill_hold_by_bonus(hdl->sa_bonus, ((void*)0),
       &hdl->sa_spill) == 0);
  }
  dmu_buf_will_dirty(hdl->sa_spill, tx);

  spillhdrsize = sa_find_sizes(sa, &attr_desc[i],
      attr_count - i, hdl->sa_spill, SA_SPILL,
      hdl->sa_spill->db_size, &i, &spill_used, &dummy);

  if (spill_used > SPA_OLD_MAXBLOCKSIZE)
   return (SET_ERROR(EFBIG));

  buf_space = hdl->sa_spill->db_size - spillhdrsize;
  if (BUF_SPACE_NEEDED(spill_used, spillhdrsize) >
      hdl->sa_spill->db_size)
   VERIFY(0 == sa_resize_spill(hdl,
       BUF_SPACE_NEEDED(spill_used, spillhdrsize), tx));
 }


 data_start = (void *)((uintptr_t)hdl->sa_bonus->db_data + hdrsize);
 sahdr = (sa_hdr_phys_t *)hdl->sa_bonus->db_data;
 buftype = SA_BONUS;

 if (spilling)
  buf_space = (sa->sa_force_spill) ?
      0 : SA_BLKPTR_SPACE - hdrsize;
 else
  buf_space = hdl->sa_bonus->db_size - hdrsize;

 attrs_start = attrs = kmem_alloc(sizeof (sa_attr_type_t) * attr_count,
     KM_SLEEP);
 lot_count = 0;

 for (i = 0, len_idx = 0, hash = -1ULL; i != attr_count; i++) {
  uint16_t length;

  ASSERT(IS_P2ALIGNED(data_start, 8));
  ASSERT(IS_P2ALIGNED(buf_space, 8));
  attrs[i] = attr_desc[i].sa_attr;
  length = SA_REGISTERED_LEN(sa, attrs[i]);
  if (length == 0)
   length = attr_desc[i].sa_length;
  else
   VERIFY(length == attr_desc[i].sa_length);

  if (buf_space < length) {
   VERIFY(spilling);
   VERIFY(bonustype == DMU_OT_SA);
   if (buftype == SA_BONUS && !sa->sa_force_spill) {
    sa_find_layout(hdl->sa_os, hash, attrs_start,
        lot_count, tx, &lot);
    SA_SET_HDR(sahdr, lot->lot_num, hdrsize);
   }

   buftype = SA_SPILL;
   hash = -1ULL;
   len_idx = 0;

   sahdr = (sa_hdr_phys_t *)hdl->sa_spill->db_data;
   sahdr->sa_magic = SA_MAGIC;
   data_start = (void *)((uintptr_t)sahdr +
       spillhdrsize);
   attrs_start = &attrs[i];
   buf_space = hdl->sa_spill->db_size - spillhdrsize;
   lot_count = 0;
  }
  hash ^= SA_ATTR_HASH(attrs[i]);
  attr_desc[i].sa_addr = data_start;
  attr_desc[i].sa_size = length;
  SA_COPY_DATA(attr_desc[i].sa_data_func, attr_desc[i].sa_data,
      data_start, length);
  if (sa->sa_attr_table[attrs[i]].sa_length == 0) {
   sahdr->sa_lengths[len_idx++] = length;
  }
  VERIFY((uintptr_t)data_start % 8 == 0);
  data_start = (void *)P2ROUNDUP(((uintptr_t)data_start +
      length), 8);
  buf_space -= P2ROUNDUP(length, 8);
  lot_count++;
 }

 sa_find_layout(hdl->sa_os, hash, attrs_start, lot_count, tx, &lot);





 VERIFY((bonustype == DMU_OT_ZNODE && lot->lot_num == 0) ||
     (bonustype == DMU_OT_SA && lot->lot_num > 1));

 if (bonustype == DMU_OT_SA) {
  SA_SET_HDR(sahdr, lot->lot_num,
      buftype == SA_BONUS ? hdrsize : spillhdrsize);
 }

 kmem_free(attrs, sizeof (sa_attr_type_t) * attr_count);
 if (hdl->sa_bonus_tab) {
  sa_idx_tab_rele(hdl->sa_os, hdl->sa_bonus_tab);
  hdl->sa_bonus_tab = ((void*)0);
 }
 if (!sa->sa_force_spill)
  VERIFY(0 == sa_build_index(hdl, SA_BONUS));
 if (hdl->sa_spill) {
  sa_idx_tab_rele(hdl->sa_os, hdl->sa_spill_tab);
  if (!spilling) {



   dmu_buf_rele(hdl->sa_spill, ((void*)0));
   hdl->sa_spill = ((void*)0);
   hdl->sa_spill_tab = ((void*)0);
   VERIFY(0 == dmu_rm_spill(hdl->sa_os,
       sa_handle_object(hdl), tx));
  } else {
   VERIFY(0 == sa_build_index(hdl, SA_SPILL));
  }
 }

 return (0);
}
