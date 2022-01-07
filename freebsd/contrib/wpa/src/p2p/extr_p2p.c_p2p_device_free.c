
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * p2ps_instance; int * vendor_elems; int * wfd_subelems; int ** wps_vendor_ext; int p2p_device_addr; } ;
struct p2p_device {int flags; TYPE_2__ info; int * go_neg_conf; } ;
struct p2p_data {TYPE_1__* cfg; struct p2p_device* pending_client_disc_go; struct p2p_device* sd_peer; struct p2p_device* invite_peer; struct p2p_device* go_neg_peer; } ;
struct TYPE_3__ {int cb_ctx; int (* dev_lost ) (int ,int ) ;} ;


 int P2P_DEV_REPORTED_ONCE ;
 int P2P_MAX_WPS_VENDOR_EXT ;
 int os_free (struct p2p_device*) ;
 int p2p_go_neg_failed (struct p2p_data*,int) ;
 int stub1 (int ,int ) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static void p2p_device_free(struct p2p_data *p2p, struct p2p_device *dev)
{
 int i;

 if (p2p->go_neg_peer == dev) {



  p2p_go_neg_failed(p2p, -1);
 }
 if (p2p->invite_peer == dev)
  p2p->invite_peer = ((void*)0);
 if (p2p->sd_peer == dev)
  p2p->sd_peer = ((void*)0);
 if (p2p->pending_client_disc_go == dev)
  p2p->pending_client_disc_go = ((void*)0);


 if (dev->flags & P2P_DEV_REPORTED_ONCE)
  p2p->cfg->dev_lost(p2p->cfg->cb_ctx,
       dev->info.p2p_device_addr);

 for (i = 0; i < P2P_MAX_WPS_VENDOR_EXT; i++) {
  wpabuf_free(dev->info.wps_vendor_ext[i]);
  dev->info.wps_vendor_ext[i] = ((void*)0);
 }

 wpabuf_free(dev->info.wfd_subelems);
 wpabuf_free(dev->info.vendor_elems);
 wpabuf_free(dev->go_neg_conf);
 wpabuf_free(dev->info.p2ps_instance);

 os_free(dev);
}
