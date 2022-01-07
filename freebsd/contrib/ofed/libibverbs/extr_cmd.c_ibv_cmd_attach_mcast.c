
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ibv_gid {int raw; } ;
typedef int uint16_t ;
struct ibv_qp {TYPE_1__* context; int handle; } ;
struct ibv_attach_mcast {scalar_t__ reserved; int mlid; int qp_handle; int gid; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int ATTACH_MCAST ;
 int IBV_INIT_CMD (struct ibv_attach_mcast*,int,int ) ;
 int errno ;
 int memcpy (int ,int ,int) ;
 int write (int ,struct ibv_attach_mcast*,int) ;

int ibv_cmd_attach_mcast(struct ibv_qp *qp, const union ibv_gid *gid, uint16_t lid)
{
 struct ibv_attach_mcast cmd;

 IBV_INIT_CMD(&cmd, sizeof cmd, ATTACH_MCAST);
 memcpy(cmd.gid, gid->raw, sizeof cmd.gid);
 cmd.qp_handle = qp->handle;
 cmd.mlid = lid;
 cmd.reserved = 0;

 if (write(qp->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
  return errno;

 return 0;
}
