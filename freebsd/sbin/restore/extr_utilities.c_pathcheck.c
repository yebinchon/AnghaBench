
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entry {int e_flags; } ;
struct TYPE_2__ {int d_ino; } ;


 int KEEP ;
 int NEW ;
 int NODE ;
 struct entry* addentry (char*,int ,int ) ;
 struct entry* lookupname (char*) ;
 int newnode (struct entry*) ;
 TYPE_1__* pathsearch (char*) ;
 char* strchr (char*,char) ;

void
pathcheck(char *name)
{
 char *cp;
 struct entry *ep;
 char *start;

 start = strchr(name, '/');
 if (start == ((void*)0))
  return;
 for (cp = start; *cp != '\0'; cp++) {
  if (*cp != '/')
   continue;
  *cp = '\0';
  ep = lookupname(name);
  if (ep == ((void*)0)) {

   ep = addentry(name, pathsearch(name)->d_ino, NODE);
   newnode(ep);
  }
  ep->e_flags |= NEW|KEEP;
  *cp = '/';
 }
}
