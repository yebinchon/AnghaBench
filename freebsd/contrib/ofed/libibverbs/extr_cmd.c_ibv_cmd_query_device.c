
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ibv_query_device_resp {int dummy; } ;
struct ibv_query_device {int dummy; } ;
struct ibv_device_attr {int fw_ver; } ;
struct ibv_context {int cmd_fd; } ;


 int IBV_INIT_CMD_RESP (struct ibv_query_device*,size_t,int ,struct ibv_query_device_resp*,int) ;
 int QUERY_DEVICE ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_query_device_resp*,int) ;
 int copy_query_dev_fields (struct ibv_device_attr*,struct ibv_query_device_resp*,int *) ;
 int errno ;
 int memset (int ,int ,int) ;
 size_t write (int ,struct ibv_query_device*,size_t) ;

int ibv_cmd_query_device(struct ibv_context *context,
    struct ibv_device_attr *device_attr,
    uint64_t *raw_fw_ver,
    struct ibv_query_device *cmd, size_t cmd_size)
{
 struct ibv_query_device_resp resp;

 IBV_INIT_CMD_RESP(cmd, cmd_size, QUERY_DEVICE, &resp, sizeof resp);

 if (write(context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(&resp, sizeof resp);

 memset(device_attr->fw_ver, 0, sizeof device_attr->fw_ver);
 copy_query_dev_fields(device_attr, &resp, raw_fw_ver);

 return 0;
}
