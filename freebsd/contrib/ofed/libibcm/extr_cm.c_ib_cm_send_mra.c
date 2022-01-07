
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct ib_ucm_mra {uintptr_t data; void* len; void* timeout; int id; } ;
struct ib_cm_id {TYPE_1__* device; int handle; } ;
struct TYPE_2__ {int fd; } ;


 int CM_CREATE_MSG_CMD (void*,struct ib_ucm_mra*,int ,int) ;
 int ENODATA ;
 int ERR (int ) ;
 int IB_USER_CM_CMD_SEND_MRA ;
 int write (int ,void*,int) ;

int ib_cm_send_mra(struct ib_cm_id *cm_id,
     uint8_t service_timeout,
     void *private_data,
     uint8_t private_data_len)
{
 struct ib_ucm_mra *cmd;
 void *msg;
 int result;
 int size;

 CM_CREATE_MSG_CMD(msg, cmd, IB_USER_CM_CMD_SEND_MRA, size);
 cmd->id = cm_id->handle;
 cmd->timeout = service_timeout;

 if (private_data && private_data_len) {
  cmd->data = (uintptr_t) private_data;
  cmd->len = private_data_len;
 }

 result = write(cm_id->device->fd, msg, size);
 if (result != size)
  return (result >= 0) ? ERR(ENODATA) : result;

 return 0;
}
