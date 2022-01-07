
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;


 int RUSERSPROC_NUM ;
 int RUSERSPROG ;
 int RUSERSVERS_ORIG ;
 scalar_t__ callrpc (char*,int ,int ,int ,int ,char*,int ,char*) ;
 scalar_t__ xdr_u_long ;
 scalar_t__ xdr_void ;

int
rnusers(char *host)
{
 int nusers;

 if (callrpc(host, RUSERSPROG, RUSERSVERS_ORIG, RUSERSPROC_NUM,
   (xdrproc_t)xdr_void, (char *) ((void*)0),
   (xdrproc_t)xdr_u_long, (char *) &nusers) != 0)
  return (-1);
 else
  return (nusers);
}
