
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; } ;


 int CTRL_MSG_SIZE ;
 int client_send (TYPE_1__*,int) ;
 int client_send_recv (TYPE_1__*,int,int) ;
 scalar_t__ echo ;
 int end ;
 TYPE_1__ g_msg ;
 int gettimeofday (int *,int *) ;
 int msg_op_data ;
 int msg_op_echo ;
 int msg_op_end ;
 int msg_op_start ;
 int show_perf () ;
 int start ;
 int transfer_count ;
 int transfer_size ;

__attribute__((used)) static int run_test(void)
{
 int ret, i;

 g_msg.op = msg_op_start;
 ret = client_send_recv(&g_msg, CTRL_MSG_SIZE, 1000);
 if (ret != CTRL_MSG_SIZE)
  goto out;

 g_msg.op = echo ? msg_op_echo : msg_op_data;
 gettimeofday(&start, ((void*)0));
 for (i = 0; i < transfer_count; i++) {
  ret = echo ? client_send_recv(&g_msg, transfer_size, 1) :
        client_send(&g_msg, transfer_size);
  if (ret != transfer_size)
   goto out;
 }

 g_msg.op = msg_op_end;
 ret = client_send_recv(&g_msg, CTRL_MSG_SIZE, 1);
 if (ret != CTRL_MSG_SIZE)
  goto out;

 gettimeofday(&end, ((void*)0));
 show_perf();
 ret = 0;

out:
 return ret;
}
