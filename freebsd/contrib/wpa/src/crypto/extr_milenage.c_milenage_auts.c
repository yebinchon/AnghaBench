
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ milenage_f1 (int const*,int const*,int const*,int*,int*,int *,int*) ;
 scalar_t__ milenage_f2345 (int const*,int const*,int const*,int *,int *,int *,int *,int*) ;
 scalar_t__ os_memcmp_const (int*,int const*,int) ;

int milenage_auts(const u8 *opc, const u8 *k, const u8 *_rand, const u8 *auts,
    u8 *sqn)
{
 u8 amf[2] = { 0x00, 0x00 };
 u8 ak[6], mac_s[8];
 int i;

 if (milenage_f2345(opc, k, _rand, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ak))
  return -1;
 for (i = 0; i < 6; i++)
  sqn[i] = auts[i] ^ ak[i];
 if (milenage_f1(opc, k, _rand, sqn, amf, ((void*)0), mac_s) ||
     os_memcmp_const(mac_s, auts + 6, 8) != 0)
  return -1;
 return 0;
}
