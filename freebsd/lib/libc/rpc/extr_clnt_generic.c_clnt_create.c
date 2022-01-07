
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int CLIENT ;


 int * clnt_create_timed (char const*,int ,int ,char const*,int *) ;

CLIENT *
clnt_create(const char *hostname, rpcprog_t prog, rpcvers_t vers,
    const char *nettype)
{

 return (clnt_create_timed(hostname, prog, vers, nettype, ((void*)0)));
}
