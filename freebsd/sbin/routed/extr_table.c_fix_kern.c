
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct khash {int k_state; scalar_t__ k_keep; struct khash* k_next; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;


 int KHASH_SIZE ;
 int KS_ADD ;
 int KS_CHANGE ;
 int KS_DELETE ;
 int KS_DEL_ADD ;
 int KS_DYNAMIC ;
 int KS_GATEWAY ;
 int KS_STATIC ;
 int LIM_SEC (int ,scalar_t__) ;
 int RTF_GATEWAY ;
 int RTM_ADD ;
 int RTM_CHANGE ;
 int RTM_DELETE ;
 int ag_flush (int ,int ,int ) ;
 int age_timer ;
 int free (struct khash*) ;
 int kern_check_static (struct khash*,int ) ;
 int kern_ioctl (struct khash*,int ,int ) ;
 int kern_out ;
 struct khash** khash_bins ;
 int need_kern ;
 TYPE_1__ now ;
 int rhead ;
 int rn_walktree (int ,int ,int ) ;
 int walk_kern ;

__attribute__((used)) static void
fix_kern(void)
{
 int i;
 struct khash *k, **pk;


 need_kern = age_timer;



 (void)rn_walktree(rhead, walk_kern, 0);
 ag_flush(0,0,kern_out);

 for (i = 0; i < KHASH_SIZE; i++) {
  for (pk = &khash_bins[i]; (k = *pk) != ((void*)0); ) {

   if (k->k_state & KS_STATIC) {
    kern_check_static(k,0);
    pk = &k->k_next;
    continue;
   }


   if (k->k_keep > now.tv_sec) {

    LIM_SEC(need_kern, k->k_keep);

    k->k_state |= KS_DELETE;
    pk = &k->k_next;
    continue;
   }

   if ((k->k_state & KS_DELETE)
       && !(k->k_state & KS_DYNAMIC)) {
    kern_ioctl(k, RTM_DELETE, 0);
    *pk = k->k_next;
    free(k);
    continue;
   }

   if (k->k_state & KS_DEL_ADD)
    kern_ioctl(k, RTM_DELETE, 0);

   if (k->k_state & KS_ADD) {
    kern_ioctl(k, RTM_ADD,
        ((0 != (k->k_state & (KS_GATEWAY
       | KS_DYNAMIC)))
         ? RTF_GATEWAY : 0));
   } else if (k->k_state & KS_CHANGE) {
    kern_ioctl(k, RTM_CHANGE,
        ((0 != (k->k_state & (KS_GATEWAY
       | KS_DYNAMIC)))
         ? RTF_GATEWAY : 0));
   }
   k->k_state &= ~(KS_ADD|KS_CHANGE|KS_DEL_ADD);







   k->k_state |= KS_DELETE;
   pk = &k->k_next;
  }
 }
}
