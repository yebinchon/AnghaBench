
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct peer {int flags; int cast_flags; int last_event; int num_events; scalar_t__ reach; scalar_t__ keyid; int status; } ;


 int CTL_PEER_STATUS (int ,int ,int ) ;
 int CTL_PST_AUTHENABLE ;
 int CTL_PST_AUTHENTIC ;
 int CTL_PST_BCAST ;
 int CTL_PST_CONFIG ;
 int CTL_PST_REACH ;
 int FLAG_AUTHENTIC ;
 int FLAG_CONFIG ;
 int MDF_TXONLY_MASK ;

u_short
ctlpeerstatus(
 register struct peer *p
 )
{
 u_short status;

 status = p->status;
 if (FLAG_CONFIG & p->flags)
  status |= CTL_PST_CONFIG;
 if (p->keyid)
  status |= CTL_PST_AUTHENABLE;
 if (FLAG_AUTHENTIC & p->flags)
  status |= CTL_PST_AUTHENTIC;
 if (p->reach)
  status |= CTL_PST_REACH;
 if (MDF_TXONLY_MASK & p->cast_flags)
  status |= CTL_PST_BCAST;

 return CTL_PEER_STATUS(status, p->num_events, p->last_event);
}
