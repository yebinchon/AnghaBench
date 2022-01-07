
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ucma_abi_accept {int id; } ;
struct TYPE_6__ {TYPE_1__* channel; } ;
struct cma_id_private {TYPE_2__ id; int handle; } ;
struct TYPE_5__ {int fd; } ;


 int ACCEPT ;
 int CMA_INIT_CMD (struct ucma_abi_accept*,int,int ) ;
 int ENODATA ;
 int ERR (int ) ;
 int RDMA_MAX_INIT_DEPTH ;
 int RDMA_MAX_RESP_RES ;
 int ucma_modify_qp_err (TYPE_2__*) ;
 int ucma_modify_qp_rtr (TYPE_2__*,int ) ;
 int ucma_modify_qp_rts (TYPE_2__*,int ) ;
 int write (int ,struct ucma_abi_accept*,int) ;

__attribute__((used)) static int ucma_process_conn_resp(struct cma_id_private *id_priv)
{
 struct ucma_abi_accept cmd;
 int ret;

 ret = ucma_modify_qp_rtr(&id_priv->id, RDMA_MAX_RESP_RES);
 if (ret)
  goto err;

 ret = ucma_modify_qp_rts(&id_priv->id, RDMA_MAX_INIT_DEPTH);
 if (ret)
  goto err;

 CMA_INIT_CMD(&cmd, sizeof cmd, ACCEPT);
 cmd.id = id_priv->handle;

 ret = write(id_priv->id.channel->fd, &cmd, sizeof cmd);
 if (ret != sizeof cmd) {
  ret = (ret >= 0) ? ERR(ENODATA) : -1;
  goto err;
 }

 return 0;
err:
 ucma_modify_qp_err(&id_priv->id);
 return ret;
}
