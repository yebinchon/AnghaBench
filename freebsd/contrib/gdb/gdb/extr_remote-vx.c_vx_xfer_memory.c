
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef int ptrace_out ;
typedef int ptrace_in ;
typedef enum ptracereq { ____Placeholder_ptracereq } ptracereq ;
typedef void* caddr_t ;
struct TYPE_12__ {int len; void* bytes; } ;
struct TYPE_9__ {void* more_data; } ;
struct TYPE_11__ {int status; int errno_num; TYPE_2__ info; } ;
struct TYPE_8__ {void* more_data; int ttype; } ;
struct TYPE_10__ {int addr; int data; TYPE_1__ info; int pid; } ;
typedef TYPE_3__ Rptrace ;
typedef TYPE_4__ Ptrace_return ;
typedef TYPE_5__ C_bytes ;
typedef scalar_t__ CORE_ADDR ;


 int DATA ;
 int PIDGET (int ) ;
 int PTRACE_READDATA ;
 int PTRACE_WRITEDATA ;
 int VX_MEMXFER_MAX ;
 int errno ;
 int error (int ) ;
 int inferior_ptid ;
 int memset (char*,char,int) ;
 int min (int,int ) ;
 scalar_t__ net_ptrace_clnt_call (int,TYPE_3__*,TYPE_4__*) ;
 int rpcerr ;

__attribute__((used)) static int
vx_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int write,
  struct mem_attrib *attrib, struct target_ops *target)
{
  int status;
  Rptrace ptrace_in;
  Ptrace_return ptrace_out;
  C_bytes data;
  enum ptracereq request;
  int nleft, nxfer;

  memset ((char *) &ptrace_in, '\0', sizeof (ptrace_in));
  memset ((char *) &ptrace_out, '\0', sizeof (ptrace_out));

  ptrace_in.pid = PIDGET (inferior_ptid);
  ptrace_in.addr = (int) memaddr;
  ptrace_in.data = len;

  if (write)
    {
      ptrace_in.info.ttype = DATA;
      ptrace_in.info.more_data = (caddr_t) & data;

      data.bytes = (caddr_t) myaddr;
      data.len = len;
      request = PTRACE_WRITEDATA;
    }
  else
    {
      ptrace_out.info.more_data = (caddr_t) & data;
      request = PTRACE_READDATA;
    }




  nleft = len;
  status = 0;

  while (nleft > 0 && status == 0)
    {
      nxfer = min (nleft, VX_MEMXFER_MAX);

      ptrace_in.addr = (int) memaddr;
      ptrace_in.data = nxfer;
      data.bytes = (caddr_t) myaddr;
      data.len = nxfer;




      if (net_ptrace_clnt_call (request, &ptrace_in, &ptrace_out))
 error (rpcerr);

      status = ptrace_out.status;
      if (status == 0)
 {
   memaddr += nxfer;
   myaddr += nxfer;
   nleft -= nxfer;
 }
      else
 {




   errno = ptrace_out.errno_num;
 }
    }



  return (len - nleft);
}
