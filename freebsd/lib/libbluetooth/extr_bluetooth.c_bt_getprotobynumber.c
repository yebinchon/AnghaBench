
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {int p_proto; } ;


 int bt_endprotoent () ;
 struct protoent* bt_getprotoent () ;
 int bt_setprotoent (int ) ;
 int proto_stayopen ;

struct protoent *
bt_getprotobynumber(int proto)
{
 struct protoent *p;

 bt_setprotoent(proto_stayopen);
 while ((p = bt_getprotoent()) != ((void*)0))
  if (p->p_proto == proto)
   break;
 bt_endprotoent();

 return (p);
}
