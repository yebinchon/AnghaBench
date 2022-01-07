
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {scalar_t__ state; } ;


 scalar_t__ P2P_IDLE ;
 scalar_t__ P2P_PROVISIONING ;
 scalar_t__ P2P_SEARCH ;

int p2p_in_progress(struct p2p_data *p2p)
{
 if (p2p == ((void*)0))
  return 0;
 if (p2p->state == P2P_SEARCH)
  return 2;
 return p2p->state != P2P_IDLE && p2p->state != P2P_PROVISIONING;
}
