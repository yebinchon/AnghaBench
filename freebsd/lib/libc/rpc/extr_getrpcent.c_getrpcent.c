
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {scalar_t__ number; } ;
struct rpcent {int dummy; } ;


 struct rpcent* getrpc (int ,union key) ;
 int wrap_getrpcent_r ;

struct rpcent *
getrpcent(void)
{
 union key key;

 key.number = 0;

 return (getrpc(wrap_getrpcent_r, key));
}
