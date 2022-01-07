
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u8 ;
struct ibv_query_device {int dummy; } ;
struct ibv_device_attr {int fw_ver; } ;
struct ibv_context {int dummy; } ;


 int ibv_cmd_query_device (struct ibv_context*,struct ibv_device_attr*,int*,struct ibv_query_device*,int) ;
 int snprintf (int ,int,char*,int,int,int,int) ;

int c4iw_query_device(struct ibv_context *context, struct ibv_device_attr *attr)
{
 struct ibv_query_device cmd;
 uint64_t raw_fw_ver;
 u8 major, minor, sub_minor, build;
 int ret;

 ret = ibv_cmd_query_device(context, attr, &raw_fw_ver, &cmd,
       sizeof cmd);
 if (ret)
  return ret;

 major = (raw_fw_ver >> 24) & 0xff;
 minor = (raw_fw_ver >> 16) & 0xff;
 sub_minor = (raw_fw_ver >> 8) & 0xff;
 build = raw_fw_ver & 0xff;

 snprintf(attr->fw_ver, sizeof attr->fw_ver,
   "%d.%d.%d.%d", major, minor, sub_minor, build);

 return 0;
}
