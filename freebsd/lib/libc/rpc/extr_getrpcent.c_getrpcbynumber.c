
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {int number; } ;
struct rpcent {int dummy; } ;


 struct rpcent* getrpc (int ,union key) ;
 int wrap_getrpcbynumber_r ;

struct rpcent *
getrpcbynumber(int number)
{
 union key key;

 key.number = number;

 return (getrpc(wrap_getrpcbynumber_r, key));
}
