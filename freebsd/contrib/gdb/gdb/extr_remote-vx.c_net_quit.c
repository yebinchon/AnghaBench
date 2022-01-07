
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 int PIDGET (int ) ;
 int RPC_SUCCESS ;
 int VX_TASK_SUSPEND ;
 int inferior_ptid ;
 int net_clnt_call (int ,int ,int*,int ,int*) ;
 int xdr_int ;

__attribute__((used)) static int
net_quit (void)
{
  int pid;
  int quit_status;
  enum clnt_stat status;

  quit_status = 0;



  if ((pid = PIDGET (inferior_ptid)) == 0)
    return -1;

  status = net_clnt_call (VX_TASK_SUSPEND, xdr_int, &pid, xdr_int,
     &quit_status);

  return (status == RPC_SUCCESS) ? quit_status : -1;
}
