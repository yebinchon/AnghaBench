
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
struct md_page {int pv_list; } ;
typedef int bitstr_t ;
struct TYPE_4__ {int pv_list; } ;
struct TYPE_3__ {int end; } ;


 int ASID_FIRST_AVAILABLE ;
 int KASSERT (int,char*) ;
 scalar_t__ L2_SIZE ;
 int MAXPAGESIZES ;
 int MTX_DEF ;
 int MTX_SPIN ;
 int M_WAITOK ;
 int M_ZERO ;
 int NPV_LIST_LOCKS ;
 int READ_SPECIALREG (int ) ;
 int TAILQ_INIT (int *) ;
 int TCR_ASID_16 ;
 int TUNABLE_INT_FETCH (char*,scalar_t__*) ;
 int asid_bits ;
 int asid_next ;
 int * asid_set ;
 int asid_set_mutex ;
 int asid_set_size ;
 int bit_set (int *,int) ;
 scalar_t__ bitstr_size (int) ;
 int howmany (int ,scalar_t__) ;
 scalar_t__ kmem_malloc (scalar_t__,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__* pagesizes ;
 int pv_chunks_mutex ;
 TYPE_2__ pv_dummy ;
 int * pv_list_locks ;
 struct md_page* pv_table ;
 scalar_t__ round_page (scalar_t__) ;
 int rw_init (int *,char*) ;
 scalar_t__ superpages_enabled ;
 int tcr_el1 ;
 int vm_initialized ;
 int vm_phys_nsegs ;
 TYPE_1__* vm_phys_segs ;

void
pmap_init(void)
{
 vm_size_t s;
 int i, pv_npg;




 asid_bits = (READ_SPECIALREG(tcr_el1) & TCR_ASID_16) != 0 ? 16 : 8;




 TUNABLE_INT_FETCH("vm.pmap.superpages_enabled", &superpages_enabled);
 if (superpages_enabled) {
  KASSERT(MAXPAGESIZES > 1 && pagesizes[1] == 0,
      ("pmap_init: can't assign to pagesizes[1]"));
  pagesizes[1] = L2_SIZE;
 }





 asid_set_size = 1 << asid_bits;
 asid_set = (bitstr_t *)kmem_malloc(bitstr_size(asid_set_size),
     M_WAITOK | M_ZERO);
 for (i = 0; i < ASID_FIRST_AVAILABLE; i++)
  bit_set(asid_set, i);
 asid_next = ASID_FIRST_AVAILABLE;
 mtx_init(&asid_set_mutex, "asid set", ((void*)0), MTX_SPIN);




 mtx_init(&pv_chunks_mutex, "pmap pv chunk list", ((void*)0), MTX_DEF);




 for (i = 0; i < NPV_LIST_LOCKS; i++)
  rw_init(&pv_list_locks[i], "pmap pv list");




 pv_npg = howmany(vm_phys_segs[vm_phys_nsegs - 1].end, L2_SIZE);




 s = (vm_size_t)(pv_npg * sizeof(struct md_page));
 s = round_page(s);
 pv_table = (struct md_page *)kmem_malloc(s, M_WAITOK | M_ZERO);
 for (i = 0; i < pv_npg; i++)
  TAILQ_INIT(&pv_table[i].pv_list);
 TAILQ_INIT(&pv_dummy.pv_list);

 vm_initialized = 1;
}
