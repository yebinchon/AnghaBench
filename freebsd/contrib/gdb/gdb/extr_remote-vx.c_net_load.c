
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct ldfile {scalar_t__* name; int bss_addr; int data_addr; int txt_addr; } ;
typedef int ldstruct ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int CORE_ADDR ;


 int RPC_SUCCESS ;
 int VX_LOAD ;
 int clnt_call (int ,int ,int ,char**,int ,struct ldfile*,struct timeval) ;
 int memset (char*,char,int) ;
 int pClient ;
 int xdr_ldfile ;
 int xdr_wrapstring ;

__attribute__((used)) static int
net_load (char *filename, CORE_ADDR *pTextAddr, CORE_ADDR *pDataAddr,
   CORE_ADDR *pBssAddr)
{
  enum clnt_stat status;
  struct ldfile ldstruct;
  struct timeval load_timeout;

  memset ((char *) &ldstruct, '\0', sizeof (ldstruct));
  load_timeout.tv_sec = 99999999;
  load_timeout.tv_usec = 0;

  status = clnt_call (pClient, VX_LOAD, xdr_wrapstring, &filename, xdr_ldfile,
        &ldstruct, load_timeout);

  if (status == RPC_SUCCESS)
    {
      if (*ldstruct.name == 0)
 return -1;
      *pTextAddr = ldstruct.txt_addr;
      *pDataAddr = ldstruct.data_addr;
      *pBssAddr = ldstruct.bss_addr;
      return 0;
    }
  else
    return -1;
}
