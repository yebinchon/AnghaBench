
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CTR_DLINE_SIZE (int) ;
 int CTR_ILINE_SIZE (int) ;
 int DCZID_BS_SIZE (int) ;
 int DCZID_DZP ;
 int MIN (int,int) ;
 int READ_SPECIALREG (int) ;
 int dcache_line_size ;
 int dczva_line_size ;
 int icache_line_size ;
 int idcache_line_size ;
 int pagezero ;
 int pagezero_cache ;

__attribute__((used)) static void
cache_setup(void)
{
 int dcache_line_shift, icache_line_shift, dczva_line_shift;
 uint32_t ctr_el0;
 uint32_t dczid_el0;

 ctr_el0 = READ_SPECIALREG(ctr_el0);


 dcache_line_shift = CTR_DLINE_SIZE(ctr_el0);

 dcache_line_size = sizeof(int) << dcache_line_shift;


 icache_line_shift = CTR_ILINE_SIZE(ctr_el0);
 icache_line_size = sizeof(int) << icache_line_shift;

 idcache_line_size = MIN(dcache_line_size, icache_line_size);

 dczid_el0 = READ_SPECIALREG(dczid_el0);


 if (dczid_el0 & DCZID_DZP)
  dczva_line_size = 0;
 else {

  dczva_line_shift = DCZID_BS_SIZE(dczid_el0);
  dczva_line_size = sizeof(int) << dczva_line_shift;


  pagezero = pagezero_cache;
 }
}
