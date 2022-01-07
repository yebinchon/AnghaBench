
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pv_entry {int dummy; } ;
struct l2_dtable {int dummy; } ;
struct TYPE_2__ {int v_page_count; } ;


 int L2_TABLE_SIZE_REAL ;
 int PDEBUG (int,int ) ;
 int PMAP_SHPGPERPROC ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 int UMA_ZONE_VM ;
 void* l2table_zone ;
 void* l2zone ;
 int maxproc ;
 int * pmap_l2ptp_ctor ;
 int printf (char*) ;
 int pv_entry_high_water ;
 int pv_entry_max ;
 void* pvzone ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int) ;
 int uma_zone_reserve_kva (void*,int) ;
 TYPE_1__ vm_cnt ;

void
pmap_init(void)
{
 int shpgperproc = PMAP_SHPGPERPROC;

 l2zone = uma_zcreate("L2 Table", L2_TABLE_SIZE_REAL, pmap_l2ptp_ctor,
     ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_VM | UMA_ZONE_NOFREE);
 l2table_zone = uma_zcreate("L2 Table", sizeof(struct l2_dtable), ((void*)0),
     ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_VM | UMA_ZONE_NOFREE);




 pvzone = uma_zcreate("PV ENTRY", sizeof (struct pv_entry), ((void*)0), ((void*)0),
     ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_VM | UMA_ZONE_NOFREE);
 TUNABLE_INT_FETCH("vm.pmap.shpgperproc", &shpgperproc);
 pv_entry_max = shpgperproc * maxproc + vm_cnt.v_page_count;
 uma_zone_reserve_kva(pvzone, pv_entry_max);
 pv_entry_high_water = 9 * (pv_entry_max / 10);




 PDEBUG(1, printf("pmap_init: done!\n"));
}
