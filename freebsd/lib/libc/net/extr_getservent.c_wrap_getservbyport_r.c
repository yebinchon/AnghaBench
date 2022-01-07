
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int dummy; } ;
struct key {int proto; int port; } ;


 int getservbyport_r (int ,int ,struct servent*,char*,size_t,struct servent**) ;

__attribute__((used)) static int
wrap_getservbyport_r(struct key key, struct servent *serv, char *buffer,
    size_t bufsize, struct servent **res)
{
 return (getservbyport_r(key.port, key.proto, serv, buffer, bufsize,
     res));
}
