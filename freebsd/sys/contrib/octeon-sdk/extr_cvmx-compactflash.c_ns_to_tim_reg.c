
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CVMX_CLOCK_SCLK ;
 int FLASH_RoundUP (int,int) ;
 int cvmx_clock_get_rate (int ) ;

__attribute__((used)) static uint32_t ns_to_tim_reg(int tim_mult, uint32_t nsecs)
{
 uint32_t val;


 val = FLASH_RoundUP(nsecs * (cvmx_clock_get_rate(CVMX_CLOCK_SCLK)/1000000), 1000);


 if (tim_mult != 1)
  val = FLASH_RoundUP(val, tim_mult);

 return (val);
}
