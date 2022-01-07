
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SET (int,int *) ;
 int DPCPU_SIZE ;
 int MTX_SPIN ;
 int M_WAITOK ;
 int M_ZERO ;
 int all_cpus ;
 int ap_boot_mtx ;
 int check_ap () ;
 int dcache_wbinv_poc_all () ;
 void** dpcpu ;
 scalar_t__ kmem_malloc (int ,int) ;
 int mp_ncpus ;
 int mtx_init (int *,char*,int *,int ) ;
 int platform_mp_start_ap () ;
 int printf (char*) ;

void
cpu_mp_start(void)
{
 int error, i;

 mtx_init(&ap_boot_mtx, "ap boot", ((void*)0), MTX_SPIN);


 for(i = 0; i < (mp_ncpus - 1); i++)
  dpcpu[i] = (void *)kmem_malloc(DPCPU_SIZE, M_WAITOK | M_ZERO);

 dcache_wbinv_poc_all();


 platform_mp_start_ap();


 error = check_ap();
 if (error)
  printf("WARNING: Some AP's failed to start\n");
 else
  for (i = 1; i < mp_ncpus; i++)
   CPU_SET(i, &all_cpus);
}
