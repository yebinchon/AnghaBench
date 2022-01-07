
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EAP_SIM_MK_LEN ;
 int fips186_2_prf (int const*,int ,int *,size_t) ;

__attribute__((used)) static int eap_sim_prf(const u8 *key, u8 *x, size_t xlen)
{
 return fips186_2_prf(key, EAP_SIM_MK_LEN, x, xlen);
}
