
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ MV_DEV_88F6281 ;
 scalar_t__ MV_DEV_88F6282 ;
 scalar_t__ TCLK_166MHZ ;
 scalar_t__ TCLK_200MHZ ;
 int soc_id (scalar_t__*,scalar_t__*) ;

uint32_t
get_tclk(void)
{
 uint32_t dev, rev;







 soc_id(&dev, &rev);
 if (dev == MV_DEV_88F6281 && (rev == 2 || rev == 3))
  return (TCLK_200MHZ);
 if (dev == MV_DEV_88F6282)
  return (TCLK_200MHZ);

 return (TCLK_166MHZ);
}
