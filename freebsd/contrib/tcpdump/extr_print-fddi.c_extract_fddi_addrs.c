
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fddi_header {size_t* fddi_dhost; size_t* fddi_shost; } ;


 char* fddi_bit_swap ;
 scalar_t__ fddi_bitswap ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static inline void
extract_fddi_addrs(const struct fddi_header *fddip, char *fsrc, char *fdst)
{
 register int i;

 if (fddi_bitswap) {




  for (i = 0; i < 6; ++i)
   fdst[i] = fddi_bit_swap[fddip->fddi_dhost[i]];
  for (i = 0; i < 6; ++i)
   fsrc[i] = fddi_bit_swap[fddip->fddi_shost[i]];
 }
 else {
  memcpy(fdst, (const char *)fddip->fddi_dhost, 6);
  memcpy(fsrc, (const char *)fddip->fddi_shost, 6);
 }
}
