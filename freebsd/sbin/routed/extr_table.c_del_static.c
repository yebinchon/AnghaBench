
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt_entry {int rt_state; } ;
struct khash {scalar_t__ k_gate; int k_state; scalar_t__ k_keep; } ;
typedef scalar_t__ naddr ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;


 int KS_CHECK ;
 int KS_DELETE ;
 int KS_DELETED ;
 int KS_DYNAMIC ;
 int KS_STATIC ;
 scalar_t__ K_KEEP_LIM ;
 int RS_STATIC ;
 struct khash* kern_find (scalar_t__,scalar_t__,int ) ;
 TYPE_1__ now ;
 int rtbad (struct rt_entry*) ;
 struct rt_entry* rtget (scalar_t__,scalar_t__) ;

void
del_static(naddr dst,
    naddr mask,
    naddr gate,
    int gone)
{
 struct khash *k;
 struct rt_entry *rt;
 k = kern_find(dst, mask, 0);
 if (k != ((void*)0) && (gate == 0 || k->k_gate == gate)) {
  k->k_state &= ~(KS_STATIC | KS_DYNAMIC | KS_CHECK);
  k->k_state |= KS_DELETE;
  if (gone) {
   k->k_state |= KS_DELETED;
   k->k_keep = now.tv_sec + K_KEEP_LIM;
  }
 }

 rt = rtget(dst, mask);
 if (rt != ((void*)0) && (rt->rt_state & RS_STATIC))
  rtbad(rt);
}
