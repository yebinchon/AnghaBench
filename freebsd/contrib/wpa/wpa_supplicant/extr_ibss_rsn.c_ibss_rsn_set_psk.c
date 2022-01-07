
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ibss_rsn {int psk; } ;


 int PMK_LEN ;
 int os_memcpy (int ,int const*,int ) ;

void ibss_rsn_set_psk(struct ibss_rsn *ibss_rsn, const u8 *psk)
{
 if (ibss_rsn == ((void*)0))
  return;
 os_memcpy(ibss_rsn->psk, psk, PMK_LEN);
}
