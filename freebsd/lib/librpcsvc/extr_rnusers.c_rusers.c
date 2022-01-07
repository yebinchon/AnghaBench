
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int utmpidlearr ;


 int RUSERSPROC_NAMES ;
 int RUSERSPROG ;
 int RUSERSVERS_IDLE ;
 int callrpc (char*,int ,int ,int ,int ,char*,int ,char*) ;
 scalar_t__ xdr_utmpidlearr ;
 scalar_t__ xdr_void ;

int
rusers(char *host, utmpidlearr *up)
{
 return (callrpc(host, RUSERSPROG, RUSERSVERS_IDLE, RUSERSPROC_NAMES,
   (xdrproc_t)xdr_void, (char *) ((void*)0),
   (xdrproc_t)xdr_utmpidlearr, (char *) up));
}
