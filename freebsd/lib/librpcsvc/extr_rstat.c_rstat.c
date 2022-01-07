
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct statstime {int dummy; } ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 int RSTATPROC_STATS ;
 int RSTATPROG ;
 int RSTATVERS_TIME ;
 int callrpc (char*,int ,int ,int ,int ,char*,int ,char*) ;
 scalar_t__ xdr_statstime ;
 scalar_t__ xdr_void ;

enum clnt_stat
rstat(char *host, struct statstime *statp)
{
 return (callrpc(host, RSTATPROG, RSTATVERS_TIME, RSTATPROC_STATS,
   (xdrproc_t)xdr_void, (char *) ((void*)0),
   (xdrproc_t)xdr_statstime, (char *) statp));
}
