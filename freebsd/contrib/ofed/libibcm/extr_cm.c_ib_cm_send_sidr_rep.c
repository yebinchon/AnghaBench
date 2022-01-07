
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_ucm_sidr_rep {uintptr_t data; uintptr_t info; scalar_t__ info_len; scalar_t__ data_len; int status; int qkey; int qpn; int id; } ;
struct ib_cm_sidr_rep_param {scalar_t__ info_length; scalar_t__ info; scalar_t__ private_data_len; scalar_t__ private_data; int status; int qkey; int qp_num; } ;
struct ib_cm_id {TYPE_1__* device; int handle; } ;
struct TYPE_2__ {int fd; } ;


 int CM_CREATE_MSG_CMD (void*,struct ib_ucm_sidr_rep*,int ,int) ;
 int EINVAL ;
 int ENODATA ;
 int ERR (int ) ;
 int IB_USER_CM_CMD_SEND_SIDR_REP ;
 int write (int ,void*,int) ;

int ib_cm_send_sidr_rep(struct ib_cm_id *cm_id,
   struct ib_cm_sidr_rep_param *param)
{
 struct ib_ucm_sidr_rep *cmd;
 void *msg;
 int result;
 int size;

 if (!param)
  return ERR(EINVAL);

 CM_CREATE_MSG_CMD(msg, cmd, IB_USER_CM_CMD_SEND_SIDR_REP, size);
 cmd->id = cm_id->handle;
 cmd->qpn = param->qp_num;
 cmd->qkey = param->qkey;
 cmd->status = param->status;

 if (param->private_data && param->private_data_len) {
  cmd->data = (uintptr_t) param->private_data;
  cmd->data_len = param->private_data_len;
 }

 if (param->info && param->info_length) {
  cmd->info = (uintptr_t) param->info;
  cmd->info_len = param->info_length;
 }

 result = write(cm_id->device->fd, msg, size);
 if (result != size)
  return (result >= 0) ? ERR(ENODATA) : -1;

 return 0;
}
