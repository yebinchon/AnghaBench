
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int dummy; } ;
struct key {scalar_t__ port; int * proto; } ;


 struct servent* getserv (int ,struct key) ;
 int wrap_getservent_r ;

struct servent *
getservent(void)
{
 struct key key;

 key.proto = ((void*)0);
 key.port = 0;

 return (getserv(wrap_getservent_r, key));
}
