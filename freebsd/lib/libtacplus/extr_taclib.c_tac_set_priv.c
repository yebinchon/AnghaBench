
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int priv_lvl; } ;
struct TYPE_5__ {TYPE_1__ authen_start; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct tac_handle {TYPE_3__ request; } ;


 int TAC_PRIV_LVL_MAX ;
 int TAC_PRIV_LVL_MIN ;
 int generr (struct tac_handle*,char*) ;

int
tac_set_priv(struct tac_handle *h, int priv)
{
 if (!(TAC_PRIV_LVL_MIN <= priv && priv <= TAC_PRIV_LVL_MAX)) {
  generr(h, "Attempt to set invalid privilege level");
  return -1;
 }
 h->request.u.authen_start.priv_lvl = priv;
 return 0;
}
