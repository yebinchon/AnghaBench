
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int dummy; } ;
struct key {char const* name; char const* proto; } ;


 struct servent* getserv (int ,struct key) ;
 int wrap_getservbyname_r ;

struct servent *
getservbyname(const char *name, const char *proto)
{
 struct key key;

 key.name = name;
 key.proto = proto;

 return (getserv(wrap_getservbyname_r, key));
}
