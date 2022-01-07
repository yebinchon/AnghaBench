
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int sa_lock; } ;
typedef TYPE_1__ sa_os_t ;
struct TYPE_15__ {scalar_t__ sa_magic; void** sa_lengths; void* sa_layout_info; } ;
typedef TYPE_2__ sa_hdr_phys_t ;
struct TYPE_16__ {scalar_t__ sa_spill; TYPE_6__* sa_os; } ;
typedef TYPE_3__ sa_handle_t ;
typedef scalar_t__ sa_buf_type_t ;
struct TYPE_17__ {int db_buf; } ;
typedef TYPE_4__ dmu_buf_impl_t ;
struct TYPE_18__ {TYPE_1__* os_sa; } ;


 int ASSERT (int ) ;
 void* BSWAP_16 (void*) ;
 scalar_t__ BSWAP_32 (scalar_t__) ;
 int DMU_OT_SA ;
 int MUTEX_HELD (int *) ;
 TYPE_4__* SA_GET_DB (TYPE_3__*,scalar_t__) ;
 TYPE_2__* SA_GET_HDR (TYPE_3__*,scalar_t__) ;
 int SA_HDR_SIZE (TYPE_2__*) ;
 scalar_t__ SA_MAGIC ;
 scalar_t__ SA_SPILL ;
 int arc_buf_freeze (int ) ;
 int arc_buf_thaw (int ) ;
 int arc_release (int ,int *) ;
 int sa_attr_iter (TYPE_6__*,TYPE_2__*,int ,int ,int *,TYPE_3__*) ;
 int sa_byteswap_cb ;

void
sa_byteswap(sa_handle_t *hdl, sa_buf_type_t buftype)
{
 sa_hdr_phys_t *sa_hdr_phys = SA_GET_HDR(hdl, buftype);
 dmu_buf_impl_t *db;
 sa_os_t *sa = hdl->sa_os->os_sa;
 int num_lengths = 1;
 int i;

 ASSERT(MUTEX_HELD(&sa->sa_lock));
 if (sa_hdr_phys->sa_magic == SA_MAGIC)
  return;

 db = SA_GET_DB(hdl, buftype);

 if (buftype == SA_SPILL) {
  arc_release(db->db_buf, ((void*)0));
  arc_buf_thaw(db->db_buf);
 }

 sa_hdr_phys->sa_magic = BSWAP_32(sa_hdr_phys->sa_magic);
 sa_hdr_phys->sa_layout_info = BSWAP_16(sa_hdr_phys->sa_layout_info);






 if (SA_HDR_SIZE(sa_hdr_phys) > 8)
  num_lengths += (SA_HDR_SIZE(sa_hdr_phys) - 8) >> 1;
 for (i = 0; i != num_lengths; i++)
  sa_hdr_phys->sa_lengths[i] =
      BSWAP_16(sa_hdr_phys->sa_lengths[i]);

 sa_attr_iter(hdl->sa_os, sa_hdr_phys, DMU_OT_SA,
     sa_byteswap_cb, ((void*)0), hdl);

 if (buftype == SA_SPILL)
  arc_buf_freeze(((dmu_buf_impl_t *)hdl->sa_spill)->db_buf);
}
