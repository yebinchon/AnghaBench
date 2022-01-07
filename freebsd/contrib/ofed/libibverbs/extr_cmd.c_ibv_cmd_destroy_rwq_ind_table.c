
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_rwq_ind_table {TYPE_1__* context; int ind_tbl_handle; } ;
struct ibv_destroy_rwq_ind_table {int ind_tbl_handle; } ;
typedef int cmd ;
struct TYPE_2__ {int cmd_fd; } ;


 int DESTROY_RWQ_IND_TBL ;
 int IBV_INIT_CMD_EX (struct ibv_destroy_rwq_ind_table*,int,int ) ;
 int errno ;
 int memset (struct ibv_destroy_rwq_ind_table*,int ,int) ;
 int write (int ,struct ibv_destroy_rwq_ind_table*,int) ;

int ibv_cmd_destroy_rwq_ind_table(struct ibv_rwq_ind_table *rwq_ind_table)
{
 struct ibv_destroy_rwq_ind_table cmd;
 int ret = 0;

 memset(&cmd, 0, sizeof(cmd));
 IBV_INIT_CMD_EX(&cmd, sizeof(cmd), DESTROY_RWQ_IND_TBL);
 cmd.ind_tbl_handle = rwq_ind_table->ind_tbl_handle;

 if (write(rwq_ind_table->context->cmd_fd, &cmd, sizeof(cmd)) != sizeof(cmd))
  ret = errno;

 return ret;
}
