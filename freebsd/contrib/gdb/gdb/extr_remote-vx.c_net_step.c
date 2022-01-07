
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_3__ {scalar_t__ endAddr; scalar_t__ startAddr; int taskId; } ;
typedef TYPE_1__ SOURCE_STEP ;


 int PIDGET (int ) ;
 int RPC_SUCCESS ;
 int VX_SOURCE_STEP ;
 int error (int ) ;
 int inferior_ptid ;
 int net_clnt_call (int ,int ,TYPE_1__*,int ,int*) ;
 int rpcerr ;
 scalar_t__ step_range_end ;
 scalar_t__ step_range_start ;
 int xdr_SOURCE_STEP ;
 int xdr_int ;

__attribute__((used)) static int
net_step (void)
{
  enum clnt_stat status;
  int step_status;
  SOURCE_STEP source_step;

  source_step.taskId = PIDGET (inferior_ptid);

  if (step_range_end)
    {
      source_step.startAddr = step_range_start;
      source_step.endAddr = step_range_end;
    }
  else
    {
      source_step.startAddr = 0;
      source_step.endAddr = 0;
    }

  status = net_clnt_call (VX_SOURCE_STEP, xdr_SOURCE_STEP, &source_step,
     xdr_int, &step_status);

  if (status == RPC_SUCCESS)
    return step_status;
  else
    error (rpcerr);
}
