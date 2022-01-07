
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_lfsr_t ;


 int REQUIRE (int ) ;
 int VALID_LFSR (int *) ;
 int lfsr_generate (int *) ;

void
isc_lfsr_skip(isc_lfsr_t *lfsr, unsigned int skip)
{
 REQUIRE(VALID_LFSR(lfsr));

 while (skip--)
  (void)lfsr_generate(lfsr);
}
