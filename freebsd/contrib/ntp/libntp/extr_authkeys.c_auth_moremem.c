
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void symkey_alloc ;
typedef void symkey ;
struct TYPE_2__ {int f; } ;


 int LINK_SLIST (int ,void*,int ) ;
 int MEMINC ;
 int MOREMEM_EXTRA_ALLOC ;
 int authallocs ;
 int authfreekeys ;
 int authnumfreekeys ;
 void* eallocarrayxz (int,int,int ) ;
 int link ;
 TYPE_1__ llink ;

void
auth_moremem(
 int keycount
 )
{
 symkey * sk;
 int i;
 i = (keycount > 0)
  ? keycount
  : MEMINC;
 sk = eallocarrayxz(i, sizeof(*sk), (0));



 authnumfreekeys += i;

 for (; i > 0; i--, sk++) {
  LINK_SLIST(authfreekeys, sk, llink.f);
 }






}
