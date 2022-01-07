
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct khash {int k_state; scalar_t__ k_gate; scalar_t__ k_metric; } ;
struct ag_info {scalar_t__ ag_metric; int ag_state; scalar_t__ ag_gate; int ag_mask; int ag_dst_h; } ;


 int AGS_GATEWAY ;
 scalar_t__ HOPCNT_INFINITY ;
 int KS_ADD ;
 int KS_CHANGE ;
 int KS_DELETE ;
 int KS_DELETED ;
 int KS_DEL_ADD ;
 int KS_DYNAMIC ;
 int KS_GATEWAY ;
 int KS_NEW ;
 int KS_STATIC ;
 int htonl (int ) ;
 struct khash* kern_add (int ,int ) ;
 struct khash* kern_find (int ,int ,int ) ;

__attribute__((used)) static void
kern_out(struct ag_info *ag)
{
 struct khash *k;






 if (ag->ag_metric == HOPCNT_INFINITY) {
  k = kern_find(htonl(ag->ag_dst_h), ag->ag_mask, 0);
  if (k == ((void*)0))
   return;
 } else {
  k = kern_add(htonl(ag->ag_dst_h), ag->ag_mask);
 }

 if (k->k_state & KS_NEW) {

  k->k_state = KS_ADD;
  if (ag->ag_state & AGS_GATEWAY)
   k->k_state |= KS_GATEWAY;
  k->k_gate = ag->ag_gate;
  k->k_metric = ag->ag_metric;
  return;
 }

 if (k->k_state & KS_STATIC)
  return;


 if (k->k_gate != ag->ag_gate
     || k->k_metric != ag->ag_metric) {

  if (k->k_metric == HOPCNT_INFINITY)
   k->k_state |= KS_DEL_ADD;
  k->k_gate = ag->ag_gate;
  k->k_metric = ag->ag_metric;
  k->k_state |= KS_CHANGE;
 }






 if ((k->k_state & (KS_DYNAMIC | KS_DELETED)) != 0) {
  k->k_state &= ~KS_DYNAMIC;
  k->k_state |= (KS_ADD | KS_DEL_ADD);
 }

 if ((k->k_state & KS_GATEWAY)
     && !(ag->ag_state & AGS_GATEWAY)) {
  k->k_state &= ~KS_GATEWAY;
  k->k_state |= (KS_ADD | KS_DEL_ADD);
 } else if (!(k->k_state & KS_GATEWAY)
     && (ag->ag_state & AGS_GATEWAY)) {
  k->k_state |= KS_GATEWAY;
  k->k_state |= (KS_ADD | KS_DEL_ADD);
 }





 if (k->k_metric == HOPCNT_INFINITY
     && (k->k_state & KS_DEL_ADD))
  k->k_state |= KS_DELETE;
 else
  k->k_state &= ~KS_DELETE;

}
