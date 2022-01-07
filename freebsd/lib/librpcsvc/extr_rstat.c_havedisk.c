
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;


 int RSTATPROC_HAVEDISK ;
 int RSTATPROG ;
 int RSTATVERS_SWTCH ;
 scalar_t__ callrpc (char*,int ,int ,int ,int ,char*,int ,char*) ;
 scalar_t__ xdr_long ;
 scalar_t__ xdr_void ;

int
havedisk(char *host)
{
 long have;

 if (callrpc(host, RSTATPROG, RSTATVERS_SWTCH, RSTATPROC_HAVEDISK,
   (xdrproc_t)xdr_void, (char *) ((void*)0),
   (xdrproc_t)xdr_long, (char *) &have) != 0)
  return (-1);
 else
  return (have);
}
