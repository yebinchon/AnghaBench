
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdata {scalar_t__ cookie; int orphaned_conns; int user_list; int port_list; } ;


 int CCASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;
 int LIST_FIRST (int *) ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_FIRST (int *) ;
 int cc_conn_destroy (int ) ;
 int cc_port_destroy (int ,int) ;
 int cc_sig_flush_all (struct ccdata*) ;
 int cc_user_destroy (int ) ;

void
cc_reset(struct ccdata *cc)
{

 while (!LIST_EMPTY(&cc->user_list))
  cc_user_destroy(LIST_FIRST(&cc->user_list));

 while (!TAILQ_EMPTY(&cc->port_list))
  cc_port_destroy(TAILQ_FIRST(&cc->port_list), 1);

 while (!LIST_EMPTY(&cc->orphaned_conns))
  cc_conn_destroy(LIST_FIRST(&cc->orphaned_conns));

 CCASSERT(LIST_EMPTY(&cc->user_list),
     ("user list not empty"));
 CCASSERT(LIST_EMPTY(&cc->orphaned_conns),
     ("still orphaned conns"));

 cc_sig_flush_all(cc);

 cc->cookie = 0;
}
