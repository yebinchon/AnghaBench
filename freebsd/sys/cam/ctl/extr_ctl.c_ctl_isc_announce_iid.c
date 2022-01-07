
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int name_len; int data; int wwpn; int in_use; } ;
struct TYPE_6__ {scalar_t__ targ_port; int initid; } ;
struct TYPE_7__ {TYPE_1__ nexus; int msg_type; } ;
union ctl_ha_msg {TYPE_4__ iid; TYPE_2__ hdr; } ;
struct ctl_softc {scalar_t__ port_min; scalar_t__ port_max; scalar_t__ ha_link; int ctl_lock; } ;
struct ctl_port {scalar_t__ targ_port; TYPE_3__* wwpn_iid; struct ctl_softc* ctl_softc; } ;
struct TYPE_8__ {int name; int wwpn; int in_use; } ;


 int CTL_HA_CHAN_CTL ;
 scalar_t__ CTL_HA_LINK_ONLINE ;
 int CTL_MSG_IID_SYNC ;
 int M_CTL ;
 int M_NOWAIT ;
 int bzero (TYPE_4__*,int) ;
 int ctl_ha_msg_send (int ,TYPE_4__*,int,int ) ;
 int free (union ctl_ha_msg*,int ) ;
 union ctl_ha_msg* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strlcpy (int ,int ,int) ;
 int strlen (int ) ;

void
ctl_isc_announce_iid(struct ctl_port *port, int iid)
{
 struct ctl_softc *softc = port->ctl_softc;
 union ctl_ha_msg *msg;
 int i, l;

 if (port->targ_port < softc->port_min ||
     port->targ_port >= softc->port_max ||
     softc->ha_link != CTL_HA_LINK_ONLINE)
  return;
 mtx_lock(&softc->ctl_lock);
 i = sizeof(msg->iid);
 l = 0;
 if (port->wwpn_iid[iid].name)
  l = strlen(port->wwpn_iid[iid].name) + 1;
 i += l;
 msg = malloc(i, M_CTL, M_NOWAIT);
 if (msg == ((void*)0)) {
  mtx_unlock(&softc->ctl_lock);
  return;
 }
 bzero(&msg->iid, sizeof(msg->iid));
 msg->hdr.msg_type = CTL_MSG_IID_SYNC;
 msg->hdr.nexus.targ_port = port->targ_port;
 msg->hdr.nexus.initid = iid;
 msg->iid.in_use = port->wwpn_iid[iid].in_use;
 msg->iid.name_len = l;
 msg->iid.wwpn = port->wwpn_iid[iid].wwpn;
 if (port->wwpn_iid[iid].name)
  strlcpy(msg->iid.data, port->wwpn_iid[iid].name, l);
 mtx_unlock(&softc->ctl_lock);
 ctl_ha_msg_send(CTL_HA_CHAN_CTL, &msg->iid, i, M_NOWAIT);
 free(msg, M_CTL);
}
