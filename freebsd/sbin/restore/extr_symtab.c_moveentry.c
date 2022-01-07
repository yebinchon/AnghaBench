
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int e_flags; int e_name; int e_namlen; struct entry* e_entries; struct entry* e_sibling; struct entry* e_parent; } ;


 int TMPNAME ;
 int badentry (struct entry*,char*) ;
 int freename (int ) ;
 int gentempname (struct entry*) ;
 struct entry* lookupparent (char*) ;
 int removeentry (struct entry*) ;
 int savename (char*) ;
 scalar_t__ strcmp (int ,int ) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

void
moveentry(struct entry *ep, char *newname)
{
 struct entry *np;
 char *cp;

 np = lookupparent(newname);
 if (np == ((void*)0))
  badentry(ep, "cannot move ROOT");
 if (np != ep->e_parent) {
  removeentry(ep);
  ep->e_parent = np;
  ep->e_sibling = np->e_entries;
  np->e_entries = ep;
 }
 cp = strrchr(newname, '/') + 1;
 freename(ep->e_name);
 ep->e_name = savename(cp);
 ep->e_namlen = strlen(cp);
 if (strcmp(gentempname(ep), ep->e_name) == 0)
  ep->e_flags |= TMPNAME;
 else
  ep->e_flags &= ~TMPNAME;
}
