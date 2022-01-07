
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldtabl {int dummy; } ;
typedef int ldtabl ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 int RPC_SUCCESS ;
 int VX_STATE_INQ ;
 int memset (char*,char,int) ;
 int net_clnt_call (int ,int ,int ,int ,int *) ;
 int xdr_ldtabl ;
 int xdr_void ;

__attribute__((used)) static int
net_get_symbols (ldtabl *pLoadTable)
{
  enum clnt_stat status;

  memset ((char *) pLoadTable, '\0', sizeof (struct ldtabl));

  status = net_clnt_call (VX_STATE_INQ, xdr_void, 0, xdr_ldtabl, pLoadTable);
  return (status == RPC_SUCCESS) ? 0 : -1;
}
