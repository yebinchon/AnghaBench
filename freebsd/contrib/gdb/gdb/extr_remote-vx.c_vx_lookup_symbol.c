
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolAddr ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_3__ {int status; int addr; } ;
typedef TYPE_1__ SYMBOL_ADDR ;
typedef int CORE_ADDR ;


 int RPC_SUCCESS ;
 int VX_SYMBOL_INQ ;
 int complaint (int *,char*) ;
 int memset (char*,char,int) ;
 int net_clnt_call (int ,int ,char**,int ,TYPE_1__*) ;
 int symfile_complaints ;
 int xdr_SYMBOL_ADDR ;
 int xdr_wrapstring ;

__attribute__((used)) static int
vx_lookup_symbol (char *name,
    CORE_ADDR *pAddr)
{
  enum clnt_stat status;
  SYMBOL_ADDR symbolAddr;

  *pAddr = 0;
  memset ((char *) &symbolAddr, '\0', sizeof (symbolAddr));

  status = net_clnt_call (VX_SYMBOL_INQ, xdr_wrapstring, &name,
     xdr_SYMBOL_ADDR, &symbolAddr);
  if (status != RPC_SUCCESS)
    {
      complaint (&symfile_complaints, "Lost contact with VxWorks target");
      return -1;
    }

  *pAddr = symbolAddr.addr;
  return symbolAddr.status;
}
