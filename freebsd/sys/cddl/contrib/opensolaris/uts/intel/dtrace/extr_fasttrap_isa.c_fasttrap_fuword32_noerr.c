
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fasttrap_fuword32 (void const*) ;

__attribute__((used)) static uint32_t
fasttrap_fuword32_noerr(const void *uaddr)
{
 uint32_t ret;

 if ((ret = fasttrap_fuword32(uaddr)) != -1)
  return (ret);

 return (0);
}
