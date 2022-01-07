
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tac_acct_start {int action; int authen_action; int authen_type; int authen_service; int priv_lvl; } ;
struct TYPE_3__ {struct tac_acct_start acct_start; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct tac_handle {TYPE_2__ request; } ;


 int TAC_ACCT ;
 int TAC_PRIV_LVL_USER ;
 int create_msg (struct tac_handle*,int ,int,int) ;

int
tac_create_acct(struct tac_handle *h, int acct, int action, int type, int service)
{
 struct tac_acct_start *as;

 create_msg(h, TAC_ACCT, action, type);

 as = &h->request.u.acct_start;
 as->action = acct;
 as->authen_action = action;
 as->priv_lvl = TAC_PRIV_LVL_USER;
 as->authen_type = type;
 as->authen_service = service;

 return 0;
}
