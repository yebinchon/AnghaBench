
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ctl_softc {int ctl_lock; struct ctl_port** ctl_ports; int port_list; int ctl_port_mask; int num_ports; int port_max; int port_min; } ;
struct TYPE_3__ {int item; } ;
struct ctl_port {int targ_port; int max_initiators; TYPE_2__* frontend; int port_lock; TYPE_1__ stats; int * options; void* ctl_pool_ref; int * wwpn_iid; scalar_t__ num_requested_ctl_io; int port_name; struct ctl_softc* ctl_softc; } ;
struct TYPE_4__ {int port_list; } ;


 int CTL_MAX_INIT_PER_PORT ;
 int ENOMEM ;
 int KASSERT (int ,char*) ;
 int MTX_DEF ;
 int M_CTL ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct ctl_port* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_AFTER (int *,struct ctl_port*,struct ctl_port*,int ) ;
 int STAILQ_INSERT_HEAD (int *,struct ctl_port*,int ) ;
 int STAILQ_INSERT_TAIL (int *,struct ctl_port*,int ) ;
 struct ctl_port* STAILQ_NEXT (struct ctl_port*,int ) ;
 struct ctl_softc* control_softc ;
 int ctl_clear_mask (int ,int) ;
 int ctl_ffz (int ,int ,int ) ;
 int ctl_pool_create (struct ctl_softc*,int ,scalar_t__,void**) ;
 scalar_t__ ctl_set_mask (int ,int) ;
 int fe_links ;
 int free (int *,int ) ;
 int links ;
 int * malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * nvlist_create (int ) ;

int
ctl_port_register(struct ctl_port *port)
{
 struct ctl_softc *softc = control_softc;
 struct ctl_port *tport, *nport;
 void *pool;
 int port_num;
 int retval;

 KASSERT(softc != ((void*)0), ("CTL is not initialized"));
 port->ctl_softc = softc;

 mtx_lock(&softc->ctl_lock);
 if (port->targ_port >= 0)
  port_num = port->targ_port;
 else
  port_num = ctl_ffz(softc->ctl_port_mask,
      softc->port_min, softc->port_max);
 if ((port_num < 0) ||
     (ctl_set_mask(softc->ctl_port_mask, port_num) < 0)) {
  mtx_unlock(&softc->ctl_lock);
  return (1);
 }
 softc->num_ports++;
 mtx_unlock(&softc->ctl_lock);




 port->max_initiators = CTL_MAX_INIT_PER_PORT;
 port->wwpn_iid = malloc(sizeof(*port->wwpn_iid) * port->max_initiators,
     M_CTL, M_NOWAIT | M_ZERO);
 if (port->wwpn_iid == ((void*)0)) {
  retval = ENOMEM;
  goto error;
 }
 retval = ctl_pool_create(softc, port->port_name,
     port->num_requested_ctl_io + 20, &pool);
 if (retval != 0) {
  free(port->wwpn_iid, M_CTL);
error:
  port->targ_port = -1;
  mtx_lock(&softc->ctl_lock);
  ctl_clear_mask(softc->ctl_port_mask, port_num);
  mtx_unlock(&softc->ctl_lock);
  return (retval);
 }
 port->targ_port = port_num;
 port->ctl_pool_ref = pool;
 if (port->options == ((void*)0))
  port->options = nvlist_create(0);
 port->stats.item = port_num;
 mtx_init(&port->port_lock, "CTL port", ((void*)0), MTX_DEF);

 mtx_lock(&softc->ctl_lock);
 STAILQ_INSERT_TAIL(&port->frontend->port_list, port, fe_links);
 for (tport = ((void*)0), nport = STAILQ_FIRST(&softc->port_list);
     nport != ((void*)0) && nport->targ_port < port_num;
     tport = nport, nport = STAILQ_NEXT(tport, links)) {
 }
 if (tport)
  STAILQ_INSERT_AFTER(&softc->port_list, tport, port, links);
 else
  STAILQ_INSERT_HEAD(&softc->port_list, port, links);
 softc->ctl_ports[port->targ_port] = port;
 mtx_unlock(&softc->ctl_lock);

 return (retval);
}
