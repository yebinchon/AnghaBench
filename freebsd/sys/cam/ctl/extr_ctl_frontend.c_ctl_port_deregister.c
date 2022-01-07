
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ctl_softc {int ctl_lock; int ** ctl_ports; int ctl_port_mask; int num_ports; int port_list; } ;
struct ctl_port {int targ_port; int max_initiators; int port_lock; TYPE_2__* wwpn_iid; TYPE_2__* init_devid; TYPE_2__* target_devid; TYPE_2__* port_devid; int options; TYPE_1__* frontend; scalar_t__ ctl_pool_ref; struct ctl_softc* ctl_softc; } ;
struct ctl_io_pool {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* name; } ;
struct TYPE_3__ {int port_list; } ;


 int M_CTL ;
 int STAILQ_REMOVE (int *,struct ctl_port*,int ,int ) ;
 int ctl_clear_mask (int ,int) ;
 int ctl_lun_map_deinit (struct ctl_port*) ;
 int ctl_pool_free (struct ctl_io_pool*) ;
 int ctl_port ;
 int fe_links ;
 int free (TYPE_2__*,int ) ;
 int links ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvlist_destroy (int ) ;

int
ctl_port_deregister(struct ctl_port *port)
{
 struct ctl_softc *softc = port->ctl_softc;
 struct ctl_io_pool *pool = (struct ctl_io_pool *)port->ctl_pool_ref;
 int i;

 if (port->targ_port == -1)
  return (1);

 mtx_lock(&softc->ctl_lock);
 STAILQ_REMOVE(&softc->port_list, port, ctl_port, links);
 STAILQ_REMOVE(&port->frontend->port_list, port, ctl_port, fe_links);
 softc->num_ports--;
 ctl_clear_mask(softc->ctl_port_mask, port->targ_port);
 softc->ctl_ports[port->targ_port] = ((void*)0);
 mtx_unlock(&softc->ctl_lock);

 ctl_pool_free(pool);
 nvlist_destroy(port->options);

 ctl_lun_map_deinit(port);
 free(port->port_devid, M_CTL);
 port->port_devid = ((void*)0);
 free(port->target_devid, M_CTL);
 port->target_devid = ((void*)0);
 free(port->init_devid, M_CTL);
 port->init_devid = ((void*)0);
 for (i = 0; i < port->max_initiators; i++)
  free(port->wwpn_iid[i].name, M_CTL);
 free(port->wwpn_iid, M_CTL);
 mtx_destroy(&port->port_lock);

 return (0);
}
