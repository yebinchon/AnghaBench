
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {char const* name; } ;
struct rpcent {int dummy; } ;


 struct rpcent* getrpc (int ,union key) ;
 int wrap_getrpcbyname_r ;

struct rpcent *
getrpcbyname(const char *name)
{
 union key key;

 key.name = name;

 return (getrpc(wrap_getrpcbyname_r, key));
}
