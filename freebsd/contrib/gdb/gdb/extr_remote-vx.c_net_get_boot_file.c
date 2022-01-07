
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 int RPC_SUCCESS ;
 int VX_BOOT_FILE_INQ ;
 int net_clnt_call (int ,int ,char*,int ,char**) ;
 int xdr_void ;
 int xdr_wrapstring ;

__attribute__((used)) static int
net_get_boot_file (char **pBootFile)
{
  enum clnt_stat status;

  status = net_clnt_call (VX_BOOT_FILE_INQ, xdr_void, (char *) 0,
     xdr_wrapstring, pBootFile);
  return (status == RPC_SUCCESS) ? 0 : -1;
}
