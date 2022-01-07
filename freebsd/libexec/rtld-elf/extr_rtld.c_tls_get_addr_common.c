
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Elf_Addr ;


 scalar_t__ __predict_true (int) ;
 scalar_t__ tls_dtv_generation ;
 void* tls_get_addr_slow (scalar_t__**,int,size_t) ;

void *
tls_get_addr_common(Elf_Addr **dtvp, int index, size_t offset)
{
 Elf_Addr *dtv;

 dtv = *dtvp;

 if (__predict_true(dtv[0] == tls_dtv_generation &&
     dtv[index + 1] != 0))
  return ((void *)(dtv[index + 1] + offset));
 return (tls_get_addr_slow(dtvp, index, offset));
}
