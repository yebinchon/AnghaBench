
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ symkey ;
typedef scalar_t__ keyid_t ;


 int FALSE ;
 int KEY_TRUSTED ;
 int TRUE ;
 TYPE_1__* auth_findkey (scalar_t__) ;
 int authkeynotfound ;
 int authkeyuncached ;
 int cache_flags ;
 scalar_t__ cache_keyid ;

int
authistrusted(
 keyid_t id
 )
{
 symkey * sk;

 if (id == cache_keyid)
  return !!(KEY_TRUSTED & cache_flags);

 authkeyuncached++;
 sk = auth_findkey(id);
 if (sk == ((void*)0) || !(KEY_TRUSTED & sk->flags)) {
  authkeynotfound++;
  return FALSE;
 }
 return TRUE;
}
