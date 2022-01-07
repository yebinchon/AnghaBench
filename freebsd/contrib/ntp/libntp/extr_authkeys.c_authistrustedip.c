
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int keyacclist; } ;
typedef TYPE_1__ symkey ;
typedef int sockaddr_u ;
typedef scalar_t__ keyid_t ;


 int FALSE ;
 int KEY_TRUSTED ;
 int TRUE ;
 TYPE_1__* auth_findkey (scalar_t__) ;
 int authkeynotfound ;
 int authkeyuncached ;
 int cache_flags ;
 int cache_keyacclist ;
 scalar_t__ cache_keyid ;
 scalar_t__ keyacc_contains (int ,int *,int ) ;

int
 authistrustedip(
  keyid_t keyno,
 sockaddr_u * sau
 )
{
 symkey * sk;

 if (keyno == cache_keyid) {
  return (KEY_TRUSTED & cache_flags) &&
      keyacc_contains(cache_keyacclist, sau, TRUE);
 }

 if (((void*)0) != (sk = auth_findkey(keyno))) {
  authkeyuncached++;
  return (KEY_TRUSTED & sk->flags) &&
      keyacc_contains(sk->keyacclist, sau, TRUE);
 }

 authkeynotfound++;
 return FALSE;
}
