
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {void* lifetime; int flags; } ;
typedef TYPE_1__ symkey ;
typedef int keyid_t ;


 int KEY_TRUSTED ;
 int allocsymkey (int ,int ,int ,int,int ,int *,int *) ;
 TYPE_1__* auth_findkey (int ) ;
 int authcache_flush_id (int ) ;
 void* current_time ;
 int freesymkey (TYPE_1__*) ;

void
authtrust(
 keyid_t id,
 u_long trust
 )
{
 symkey * sk;
 u_long lifetime;






 sk = auth_findkey(id);
 if (!trust && sk == ((void*)0))
  return;






 if (sk != ((void*)0)) {






  authcache_flush_id(id);
  if (trust > 0) {
   sk->flags |= KEY_TRUSTED;
   if (trust > 1)
    sk->lifetime = current_time + trust;
   else
    sk->lifetime = 0;
  } else {
   freesymkey(sk);
  }
  return;
 }





 if (trust > 1) {
  lifetime = current_time + trust;
 } else {
  lifetime = 0;
 }
 allocsymkey(id, KEY_TRUSTED, 0, lifetime, 0, ((void*)0), ((void*)0));
}
