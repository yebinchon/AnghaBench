
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int dummy; } ;
struct key {int port; char const* proto; } ;


 struct servent* getserv (int ,struct key) ;
 int wrap_getservbyport_r ;

struct servent *
getservbyport(int port, const char *proto)
{
 struct key key;

 key.port = port;
 key.proto = proto;

 return (getserv(wrap_getservbyport_r, key));
}
