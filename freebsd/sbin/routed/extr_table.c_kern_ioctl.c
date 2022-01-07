
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct khash {int k_state; int k_metric; int k_mask; int k_gate; int k_dst; } ;


 int KS_DELETED ;
 int KS_DYNAMIC ;



 int rtioctl (int,int ,int ,int ,int ,int) ;

__attribute__((used)) static void
kern_ioctl(struct khash *k,
    int action,
    int flags)

{
 switch (action) {
 case 128:
  k->k_state &= ~KS_DYNAMIC;
  if (k->k_state & KS_DELETED)
   return;
  k->k_state |= KS_DELETED;
  break;
 case 130:
  k->k_state &= ~KS_DELETED;
  break;
 case 129:
  if (k->k_state & KS_DELETED) {
   action = 130;
   k->k_state &= ~KS_DELETED;
  }
  break;
 }

 rtioctl(action, k->k_dst, k->k_gate, k->k_mask, k->k_metric, flags);
}
