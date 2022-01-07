
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ e_type; } ;


 scalar_t__ NODE ;
 struct entry* lookupname (char*) ;
 int panic (char*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static struct entry *
lookupparent(char *name)
{
 struct entry *ep;
 char *tailindex;

 tailindex = strrchr(name, '/');
 if (tailindex == ((void*)0))
  return (((void*)0));
 *tailindex = '\0';
 ep = lookupname(name);
 *tailindex = '/';
 if (ep == ((void*)0))
  return (((void*)0));
 if (ep->e_type != NODE)
  panic("%s is not a directory\n", name);
 return (ep);
}
