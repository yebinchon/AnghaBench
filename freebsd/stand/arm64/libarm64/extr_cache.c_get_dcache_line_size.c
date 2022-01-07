
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned int CTR_DLINE_SIZE (int ) ;
 int READ_SPECIALREG (int ) ;
 int ctr_el0 ;

__attribute__((used)) static unsigned int
get_dcache_line_size(void)
{
 uint64_t ctr;
 unsigned int dcl_size;


 ctr = READ_SPECIALREG(ctr_el0);





 dcl_size = CTR_DLINE_SIZE(ctr);


 return (sizeof(int) << dcl_size);
}
