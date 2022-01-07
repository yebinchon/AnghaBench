
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; char** h_aliases; } ;


 int bt_endhostent () ;
 struct hostent* bt_gethostent () ;
 int bt_sethostent (int ) ;
 int host_stayopen ;
 scalar_t__ strcasecmp (char*,char const*) ;

struct hostent *
bt_gethostbyname(char const *name)
{
 struct hostent *p;
 char **cp;

 bt_sethostent(host_stayopen);
 while ((p = bt_gethostent()) != ((void*)0)) {
  if (strcasecmp(p->h_name, name) == 0)
   break;
  for (cp = p->h_aliases; *cp != ((void*)0); cp++)
   if (strcasecmp(*cp, name) == 0)
    goto found;
 }
found:
 bt_endhostent();

 return (p);
}
