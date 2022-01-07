
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct ibv_sa_path_rec {int dummy; } ;
struct ib_user_path_rec {int dummy; } ;
struct ib_ucm_lap {uintptr_t path; uintptr_t data; scalar_t__ len; int id; } ;
struct ib_cm_id {TYPE_1__* device; int handle; } ;
struct TYPE_2__ {int fd; } ;


 int CM_CREATE_MSG_CMD (void*,struct ib_ucm_lap*,int ,int) ;
 int ENODATA ;
 int ERR (int ) ;
 int IB_USER_CM_CMD_SEND_LAP ;
 int ibv_copy_path_rec_to_kern (struct ib_user_path_rec*,struct ibv_sa_path_rec*) ;
 int write (int ,void*,int) ;

int ib_cm_send_lap(struct ib_cm_id *cm_id,
     struct ibv_sa_path_rec *alternate_path,
     void *private_data,
     uint8_t private_data_len)
{
 struct ib_user_path_rec abi_path;
 struct ib_ucm_lap *cmd;
 void *msg;
 int result;
 int size;

 CM_CREATE_MSG_CMD(msg, cmd, IB_USER_CM_CMD_SEND_LAP, size);
 cmd->id = cm_id->handle;

 ibv_copy_path_rec_to_kern(&abi_path, alternate_path);
 cmd->path = (uintptr_t) &abi_path;

 if (private_data && private_data_len) {
  cmd->data = (uintptr_t) private_data;
  cmd->len = private_data_len;
 }

 result = write(cm_id->device->fd, msg, size);
 if (result != size)
  return (result >= 0) ? ERR(ENODATA) : -1;

 return 0;
}
