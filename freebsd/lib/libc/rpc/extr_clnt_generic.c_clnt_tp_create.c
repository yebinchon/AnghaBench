
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int dummy; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int CLIENT ;


 int * clnt_tp_create_timed (char const*,int ,int ,struct netconfig const*,int *) ;

CLIENT *
clnt_tp_create(const char *hostname, rpcprog_t prog, rpcvers_t vers,
    const struct netconfig *nconf)
{

 return (clnt_tp_create_timed(hostname, prog, vers, nconf, ((void*)0)));
}
