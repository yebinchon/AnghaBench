
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int eap_eke_prf_len (int ) ;

__attribute__((used)) static int eap_eke_nonce_len(u8 prf)
{
 int prf_len;

 prf_len = eap_eke_prf_len(prf);
 if (prf_len < 0)
  return -1;

 if (prf_len > 2 * 16)
  return (prf_len + 1) / 2;

 return 16;
}
