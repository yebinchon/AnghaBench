
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short* authdes_lru ;

__attribute__((used)) static void
cache_ref(short sid)
{
 int i;
 short curr;
 short prev;

 prev = authdes_lru[0];
 authdes_lru[0] = sid;
 for (i = 1; prev != sid; i++) {
  curr = authdes_lru[i];
  authdes_lru[i] = prev;
  prev = curr;
 }
}
