
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int flags; scalar_t__ keyid; int keyacclist; int secretsize; int secret; } ;
typedef TYPE_1__ symkey ;
typedef scalar_t__ keyid_t ;


 int FALSE ;
 int KEY_TRUSTED ;
 int TRUE ;
 TYPE_1__* auth_findkey (scalar_t__) ;
 int authkeylookups ;
 int authkeynotfound ;
 int authkeyuncached ;
 int authnokey ;
 int cache_flags ;
 int cache_keyacclist ;
 scalar_t__ cache_keyid ;
 int cache_secret ;
 int cache_secretsize ;
 scalar_t__ cache_type ;

int
authhavekey(
 keyid_t id
 )
{
 symkey * sk;

 authkeylookups++;
 if (0 == id || cache_keyid == id)
  return !!(KEY_TRUSTED & cache_flags);






 authkeyuncached++;
 sk = auth_findkey(id);
 if ((sk == ((void*)0)) || (sk->type == 0)) {
  authkeynotfound++;
  return FALSE;
 }




 if ( ! (KEY_TRUSTED & sk->flags)) {
  authnokey++;
  return FALSE;
 }




 cache_keyid = sk->keyid;
 cache_type = sk->type;
 cache_flags = sk->flags;
 cache_secret = sk->secret;
 cache_secretsize = sk->secretsize;
 cache_keyacclist = sk->keyacclist;

 return TRUE;
}
