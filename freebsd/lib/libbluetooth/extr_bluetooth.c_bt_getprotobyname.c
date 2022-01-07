
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {char* p_name; char** p_aliases; } ;


 int bt_endprotoent () ;
 struct protoent* bt_getprotoent () ;
 int bt_setprotoent (int ) ;
 int proto_stayopen ;
 scalar_t__ strcmp (char*,char const*) ;

struct protoent *
bt_getprotobyname(char const *name)
{
 struct protoent *p;
 char **cp;

 bt_setprotoent(proto_stayopen);
 while ((p = bt_getprotoent()) != ((void*)0)) {
  if (strcmp(p->p_name, name) == 0)
   break;
  for (cp = p->p_aliases; *cp != ((void*)0); cp++)
   if (strcmp(*cp, name) == 0)
    goto found;
 }
found:
 bt_endprotoent();

 return (p);
}
