
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ibv_query_port_resp {int link_layer; int phys_state; int active_speed; int active_width; int init_type_reply; int subnet_timeout; int sm_sl; int max_vl_num; int lmc; int sm_lid; int lid; int pkey_tbl_len; int qkey_viol_cntr; int bad_pkey_cntr; int max_msg_sz; int port_cap_flags; int gid_tbl_len; int active_mtu; int max_mtu; int state; } ;
struct ibv_query_port {int reserved; int port_num; } ;
struct ibv_port_attr {int link_layer; int phys_state; int active_speed; int active_width; int init_type_reply; int subnet_timeout; int sm_sl; int max_vl_num; int lmc; int sm_lid; int lid; int pkey_tbl_len; int qkey_viol_cntr; int bad_pkey_cntr; int max_msg_sz; int port_cap_flags; int gid_tbl_len; int active_mtu; int max_mtu; int state; } ;
struct ibv_context {int cmd_fd; } ;


 int IBV_INIT_CMD_RESP (struct ibv_query_port*,size_t,int ,struct ibv_query_port_resp*,int) ;
 int QUERY_PORT ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_query_port_resp*,int) ;
 int errno ;
 int memset (int ,int ,int) ;
 size_t write (int ,struct ibv_query_port*,size_t) ;

int ibv_cmd_query_port(struct ibv_context *context, uint8_t port_num,
         struct ibv_port_attr *port_attr,
         struct ibv_query_port *cmd, size_t cmd_size)
{
 struct ibv_query_port_resp resp;

 IBV_INIT_CMD_RESP(cmd, cmd_size, QUERY_PORT, &resp, sizeof resp);
 cmd->port_num = port_num;
 memset(cmd->reserved, 0, sizeof cmd->reserved);

 if (write(context->cmd_fd, cmd, cmd_size) != cmd_size)
  return errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(&resp, sizeof resp);

 port_attr->state = resp.state;
 port_attr->max_mtu = resp.max_mtu;
 port_attr->active_mtu = resp.active_mtu;
 port_attr->gid_tbl_len = resp.gid_tbl_len;
 port_attr->port_cap_flags = resp.port_cap_flags;
 port_attr->max_msg_sz = resp.max_msg_sz;
 port_attr->bad_pkey_cntr = resp.bad_pkey_cntr;
 port_attr->qkey_viol_cntr = resp.qkey_viol_cntr;
 port_attr->pkey_tbl_len = resp.pkey_tbl_len;
 port_attr->lid = resp.lid;
 port_attr->sm_lid = resp.sm_lid;
 port_attr->lmc = resp.lmc;
 port_attr->max_vl_num = resp.max_vl_num;
 port_attr->sm_sl = resp.sm_sl;
 port_attr->subnet_timeout = resp.subnet_timeout;
 port_attr->init_type_reply = resp.init_type_reply;
 port_attr->active_width = resp.active_width;
 port_attr->active_speed = resp.active_speed;
 port_attr->phys_state = resp.phys_state;
 port_attr->link_layer = resp.link_layer;

 return 0;
}
