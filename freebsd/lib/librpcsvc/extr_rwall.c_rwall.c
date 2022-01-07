
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;


 int WALLPROC_WALL ;
 int WALLPROG ;
 int WALLVERS ;
 int callrpc (char*,int ,int ,int ,int ,char*,int ,char*) ;
 scalar_t__ xdr_void ;
 scalar_t__ xdr_wrapstring ;

int
rwall(char *host, char *msg)
{
 return (callrpc(host, WALLPROG, WALLVERS, WALLPROC_WALL,
   (xdrproc_t)xdr_wrapstring, (char *) &msg,
   (xdrproc_t)xdr_void, (char *) ((void*)0)));
}
