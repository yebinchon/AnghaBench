
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {int name; } ;
struct rpcent {int dummy; } ;


 int getrpcbyname_r (int ,struct rpcent*,char*,size_t,struct rpcent**) ;

__attribute__((used)) static int
wrap_getrpcbyname_r(union key key, struct rpcent *rpc, char *buffer,
    size_t bufsize, struct rpcent **res)
{
 return (getrpcbyname_r(key.name, rpc, buffer, bufsize, res));
}
