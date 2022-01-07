
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ibv_pd {TYPE_5__* context; int handle; } ;
struct ibv_create_ah_resp {int handle; } ;
struct TYPE_6__ {int dgid; int traffic_class; int hop_limit; int sgid_index; int flow_label; } ;
struct TYPE_7__ {TYPE_1__ grh; int port_num; int is_global; int static_rate; int src_path_bits; int sl; int dlid; } ;
struct ibv_create_ah {uintptr_t user_handle; TYPE_2__ attr; int pd_handle; } ;
struct TYPE_8__ {int raw; } ;
struct TYPE_9__ {TYPE_3__ dgid; int traffic_class; int hop_limit; int sgid_index; int flow_label; } ;
struct ibv_ah_attr {TYPE_4__ grh; int port_num; int is_global; int static_rate; int src_path_bits; int sl; int dlid; } ;
struct ibv_ah {TYPE_5__* context; int handle; } ;
struct TYPE_10__ {int cmd_fd; } ;


 int CREATE_AH ;
 int IBV_INIT_CMD_RESP (struct ibv_create_ah*,int,int ,struct ibv_create_ah_resp*,size_t) ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_create_ah_resp*,size_t) ;
 int errno ;
 int memcpy (int ,int ,int) ;
 int write (int ,struct ibv_create_ah*,int) ;

int ibv_cmd_create_ah(struct ibv_pd *pd, struct ibv_ah *ah,
        struct ibv_ah_attr *attr,
        struct ibv_create_ah_resp *resp,
        size_t resp_size)
{
 struct ibv_create_ah cmd;

 IBV_INIT_CMD_RESP(&cmd, sizeof cmd, CREATE_AH, resp, resp_size);
 cmd.user_handle = (uintptr_t) ah;
 cmd.pd_handle = pd->handle;
 cmd.attr.dlid = attr->dlid;
 cmd.attr.sl = attr->sl;
 cmd.attr.src_path_bits = attr->src_path_bits;
 cmd.attr.static_rate = attr->static_rate;
 cmd.attr.is_global = attr->is_global;
 cmd.attr.port_num = attr->port_num;
 cmd.attr.grh.flow_label = attr->grh.flow_label;
 cmd.attr.grh.sgid_index = attr->grh.sgid_index;
 cmd.attr.grh.hop_limit = attr->grh.hop_limit;
 cmd.attr.grh.traffic_class = attr->grh.traffic_class;
 memcpy(cmd.attr.grh.dgid, attr->grh.dgid.raw, 16);

 if (write(pd->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(resp, resp_size);

 ah->handle = resp->handle;
 ah->context = pd->context;

 return 0;
}
