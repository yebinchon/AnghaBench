
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int sa_lock; } ;
typedef TYPE_1__ sa_os_t ;
typedef int sa_idx_tab_t ;
struct TYPE_12__ {scalar_t__ sa_magic; } ;
typedef TYPE_2__ sa_hdr_phys_t ;
struct TYPE_13__ {int * sa_spill_tab; int * sa_bonus_tab; TYPE_4__* sa_os; } ;
typedef TYPE_3__ sa_handle_t ;
typedef scalar_t__ sa_buf_type_t ;
typedef int dmu_object_type_t ;
typedef int dmu_buf_impl_t ;
struct TYPE_14__ {TYPE_1__* os_sa; } ;


 scalar_t__ BSWAP_32 (scalar_t__) ;
 scalar_t__ IS_SA_BONUSTYPE (int ) ;
 scalar_t__ SA_BONUS ;
 int SA_BONUSTYPE_FROM_DB (int *) ;
 int * SA_GET_DB (TYPE_3__*,scalar_t__) ;
 TYPE_2__* SA_GET_HDR (TYPE_3__*,scalar_t__) ;
 scalar_t__ SA_MAGIC ;
 int VERIFY (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_byteswap (TYPE_3__*,scalar_t__) ;
 int * sa_find_idx_tab (TYPE_4__*,int ,TYPE_2__*) ;

__attribute__((used)) static int
sa_build_index(sa_handle_t *hdl, sa_buf_type_t buftype)
{
 sa_hdr_phys_t *sa_hdr_phys;
 dmu_buf_impl_t *db = SA_GET_DB(hdl, buftype);
 dmu_object_type_t bonustype = SA_BONUSTYPE_FROM_DB(db);
 sa_os_t *sa = hdl->sa_os->os_sa;
 sa_idx_tab_t *idx_tab;

 sa_hdr_phys = SA_GET_HDR(hdl, buftype);

 mutex_enter(&sa->sa_lock);




 if (IS_SA_BONUSTYPE(bonustype) && sa_hdr_phys->sa_magic != SA_MAGIC &&
     sa_hdr_phys->sa_magic != 0) {
  VERIFY(BSWAP_32(sa_hdr_phys->sa_magic) == SA_MAGIC);
  sa_byteswap(hdl, buftype);
 }

 idx_tab = sa_find_idx_tab(hdl->sa_os, bonustype, sa_hdr_phys);

 if (buftype == SA_BONUS)
  hdl->sa_bonus_tab = idx_tab;
 else
  hdl->sa_spill_tab = idx_tab;

 mutex_exit(&sa->sa_lock);
 return (0);
}
