
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_rdmasniff {int oneshot_buffer; int context; int channel; int pd; int cq; int qp; int flow; int mr; } ;
struct TYPE_4__ {struct pcap_rdmasniff* priv; } ;
typedef TYPE_1__ pcap_t ;


 int free (int ) ;
 int ibv_close_device (int ) ;
 int ibv_dealloc_pd (int ) ;
 int ibv_dereg_mr (int ) ;
 int ibv_destroy_comp_channel (int ) ;
 int ibv_destroy_cq (int ) ;
 int ibv_destroy_flow (int ) ;
 int ibv_destroy_qp (int ) ;
 int pcap_cleanup_live_common (TYPE_1__*) ;

__attribute__((used)) static void
rdmasniff_cleanup(pcap_t *handle)
{
 struct pcap_rdmasniff *priv = handle->priv;

 ibv_dereg_mr(priv->mr);
 ibv_destroy_flow(priv->flow);
 ibv_destroy_qp(priv->qp);
 ibv_destroy_cq(priv->cq);
 ibv_dealloc_pd(priv->pd);
 ibv_destroy_comp_channel(priv->channel);
 ibv_close_device(priv->context);
 free(priv->oneshot_buffer);

 pcap_cleanup_live_common(handle);
}
