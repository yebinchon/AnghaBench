
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int * go_neg_peer; } ;


 int P2P_IDLE ;
 int p2p_clear_timeout (struct p2p_data*) ;
 int p2p_set_state (struct p2p_data*,int ) ;

__attribute__((used)) static void p2p_clear_go_neg(struct p2p_data *p2p)
{
 p2p->go_neg_peer = ((void*)0);
 p2p_clear_timeout(p2p);
 p2p_set_state(p2p, P2P_IDLE);
}
