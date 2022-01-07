
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct khash {int k_state; scalar_t__ k_gate; scalar_t__ k_redirect_time; int k_mask; int k_dst; struct khash* k_next; } ;
typedef scalar_t__ naddr ;
struct TYPE_4__ {int tv_sec; } ;
struct TYPE_3__ {int tv_sec; } ;


 int KHASH_SIZE ;
 int KS_DELETE ;
 int KS_DYNAMIC ;
 int KS_STATIC ;
 int addrname (int ,int ,int ) ;
 struct khash** khash_bins ;
 int naddr_ntoa (scalar_t__) ;
 TYPE_2__ need_kern ;
 TYPE_1__ now ;
 int supplier ;
 int trace_act (char*,int ,int ) ;

void
del_redirects(naddr bad_gate,
       time_t old)
{
 int i;
 struct khash *k;


 for (i = 0; i < KHASH_SIZE; i++) {
  for (k = khash_bins[i]; k != ((void*)0); k = k->k_next) {
   if (!(k->k_state & KS_DYNAMIC)
       || (k->k_state & KS_STATIC))
    continue;

   if (k->k_gate != bad_gate
       && k->k_redirect_time > old
       && !supplier)
    continue;

   k->k_state |= KS_DELETE;
   k->k_state &= ~KS_DYNAMIC;
   need_kern.tv_sec = now.tv_sec;
   trace_act("mark redirected %s --> %s for deletion",
      addrname(k->k_dst, k->k_mask, 0),
      naddr_ntoa(k->k_gate));
  }
 }
}
