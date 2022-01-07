
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ibv_query_device {int dummy; } ;
struct ibv_device_attr {int fw_ver; } ;
struct ibv_context {int dummy; } ;


 int ibv_cmd_query_device (struct ibv_context*,struct ibv_device_attr*,int*,struct ibv_query_device*,int) ;
 int snprintf (int ,int,char*,unsigned int,unsigned int,unsigned int) ;

int mlx4_query_device(struct ibv_context *context, struct ibv_device_attr *attr)
{
 struct ibv_query_device cmd;
 uint64_t raw_fw_ver;
 unsigned major, minor, sub_minor;
 int ret;

 ret = ibv_cmd_query_device(context, attr, &raw_fw_ver, &cmd, sizeof cmd);
 if (ret)
  return ret;

 major = (raw_fw_ver >> 32) & 0xffff;
 minor = (raw_fw_ver >> 16) & 0xffff;
 sub_minor = raw_fw_ver & 0xffff;

 snprintf(attr->fw_ver, sizeof attr->fw_ver,
   "%d.%d.%03d", major, minor, sub_minor);

 return 0;
}
