
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef scalar_t__ bool_t ;


 int RPC_SUCCESS ;
 int VX_FP_INQUIRE ;
 int error (int ) ;
 int net_clnt_call (int ,int ,int ,int ,scalar_t__*) ;
 int rpcerr ;
 int xdr_bool ;
 int xdr_void ;

__attribute__((used)) static int
net_check_for_fp (void)
{
  enum clnt_stat status;
  bool_t fp = 0;

  status = net_clnt_call (VX_FP_INQUIRE, xdr_void, 0, xdr_bool, &fp);
  if (status != RPC_SUCCESS)
    error (rpcerr);

  return (int) fp;
}
