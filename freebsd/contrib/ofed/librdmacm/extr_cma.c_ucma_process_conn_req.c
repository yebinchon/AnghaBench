
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct cma_id_private {int id; int responder_resources; int initiator_depth; int handle; } ;
struct TYPE_8__ {int responder_resources; int initiator_depth; } ;
struct TYPE_9__ {TYPE_2__ conn; } ;
struct TYPE_10__ {TYPE_3__ param; int * id; TYPE_1__* listen_id; } ;
struct cma_event {TYPE_5__* id_priv; TYPE_4__ event; } ;
struct TYPE_12__ {int fd; } ;
struct TYPE_7__ {TYPE_6__* channel; int qp_type; int ps; int context; } ;
struct TYPE_11__ {scalar_t__ sync; TYPE_1__ id; } ;


 int ENOMEM ;
 int ERR (int ) ;
 int rdma_destroy_id (int *) ;
 int rdma_migrate_id (int *,int *) ;
 struct cma_id_private* ucma_alloc_id (TYPE_6__*,int ,int ,int ) ;
 int ucma_complete_event (TYPE_5__*) ;
 int ucma_destroy_kern_id (int ,int ) ;
 int ucma_insert_id (struct cma_id_private*) ;
 int ucma_query_req_info (int *) ;

__attribute__((used)) static int ucma_process_conn_req(struct cma_event *evt,
     uint32_t handle)
{
 struct cma_id_private *id_priv;
 int ret;

 id_priv = ucma_alloc_id(evt->id_priv->id.channel,
    evt->id_priv->id.context, evt->id_priv->id.ps,
    evt->id_priv->id.qp_type);
 if (!id_priv) {
  ucma_destroy_kern_id(evt->id_priv->id.channel->fd, handle);
  ret = ERR(ENOMEM);
  goto err1;
 }

 evt->event.listen_id = &evt->id_priv->id;
 evt->event.id = &id_priv->id;
 id_priv->handle = handle;
 ucma_insert_id(id_priv);
 id_priv->initiator_depth = evt->event.param.conn.initiator_depth;
 id_priv->responder_resources = evt->event.param.conn.responder_resources;

 if (evt->id_priv->sync) {
  ret = rdma_migrate_id(&id_priv->id, ((void*)0));
  if (ret)
   goto err2;
 }

 ret = ucma_query_req_info(&id_priv->id);
 if (ret)
  goto err2;

 return 0;

err2:
 rdma_destroy_id(&id_priv->id);
err1:
 ucma_complete_event(evt->id_priv);
 return ret;
}
