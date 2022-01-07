
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_4__ {scalar_t__ status; } ;
typedef TYPE_1__ RDB_EVENT ;


 int PIDGET (int ) ;
 int PROCESS_WAIT ;
 int RPC_SUCCESS ;
 int RPC_TIMEDOUT ;
 int inferior_ptid ;
 int memset (char*,char,int) ;
 int net_clnt_call (int ,int ,int*,int ,TYPE_1__*) ;
 int xdr_RDB_EVENT ;
 int xdr_int ;

__attribute__((used)) static int
net_wait (RDB_EVENT *pEvent)
{
  int pid;
  enum clnt_stat status;

  memset ((char *) pEvent, '\0', sizeof (RDB_EVENT));

  pid = PIDGET (inferior_ptid);
  status = net_clnt_call (PROCESS_WAIT, xdr_int, &pid, xdr_RDB_EVENT,
     pEvent);


  if (status == RPC_SUCCESS)
    return ((pEvent->status) ? 1 : 0);
  else if (status == RPC_TIMEDOUT)
    return (1);
  else
    return (-1);
}
