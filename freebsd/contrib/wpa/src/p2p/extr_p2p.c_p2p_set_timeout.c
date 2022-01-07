
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int state; } ;


 int eloop_cancel_timeout (int ,struct p2p_data*,int *) ;
 int eloop_register_timeout (unsigned int,unsigned int,int ,struct p2p_data*,int *) ;
 int p2p_dbg (struct p2p_data*,char*,int ,unsigned int,unsigned int) ;
 int p2p_state_timeout ;
 int p2p_state_txt (int ) ;

void p2p_set_timeout(struct p2p_data *p2p, unsigned int sec, unsigned int usec)
{
 p2p_dbg(p2p, "Set timeout (state=%s): %u.%06u sec",
  p2p_state_txt(p2p->state), sec, usec);
 eloop_cancel_timeout(p2p_state_timeout, p2p, ((void*)0));
 eloop_register_timeout(sec, usec, p2p_state_timeout, p2p, ((void*)0));
}
