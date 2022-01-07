
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_create_comp_channel_resp {int fd; } ;
struct ibv_create_comp_channel {int dummy; } ;
struct ibv_context {int cmd_fd; } ;
struct ibv_comp_channel {scalar_t__ refcnt; int fd; struct ibv_context* context; } ;


 int CREATE_COMP_CHANNEL ;
 int IBV_INIT_CMD_RESP (struct ibv_create_comp_channel*,int,int ,struct ibv_create_comp_channel_resp*,int) ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_create_comp_channel_resp*,int) ;
 int abi_ver ;
 int free (struct ibv_comp_channel*) ;
 struct ibv_comp_channel* ibv_create_comp_channel_v2 (struct ibv_context*) ;
 struct ibv_comp_channel* malloc (int) ;
 int write (int ,struct ibv_create_comp_channel*,int) ;

struct ibv_comp_channel *ibv_create_comp_channel(struct ibv_context *context)
{
 struct ibv_comp_channel *channel;
 struct ibv_create_comp_channel cmd;
 struct ibv_create_comp_channel_resp resp;

 if (abi_ver <= 2)
  return ibv_create_comp_channel_v2(context);

 channel = malloc(sizeof *channel);
 if (!channel)
  return ((void*)0);

 IBV_INIT_CMD_RESP(&cmd, sizeof cmd, CREATE_COMP_CHANNEL, &resp, sizeof resp);
 if (write(context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd) {
  free(channel);
  return ((void*)0);
 }

 (void) VALGRIND_MAKE_MEM_DEFINED(&resp, sizeof resp);

 channel->context = context;
 channel->fd = resp.fd;
 channel->refcnt = 0;

 return channel;
}
