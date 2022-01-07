
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int dummy; } ;
struct key {int dummy; } ;


 int getservent_r (struct servent*,char*,size_t,struct servent**) ;

__attribute__((used)) static int
wrap_getservent_r(struct key key, struct servent *serv, char *buffer,
    size_t bufsize, struct servent **res)
{
 return (getservent_r(serv, buffer, bufsize, res));
}
