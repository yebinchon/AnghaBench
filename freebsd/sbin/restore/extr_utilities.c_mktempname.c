
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int e_flags; int e_name; int e_namlen; } ;


 int MAXPATHLEN ;
 int TMPNAME ;
 int badentry (struct entry*,char*) ;
 int freename (int ) ;
 int gentempname (struct entry*) ;
 int myname (struct entry*) ;
 int renameit (char*,int ) ;
 int savename (int ) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;

void
mktempname(struct entry *ep)
{
 char oldname[MAXPATHLEN];

 if (ep->e_flags & TMPNAME)
  badentry(ep, "mktempname: called with TMPNAME");
 ep->e_flags |= TMPNAME;
 (void) strcpy(oldname, myname(ep));
 freename(ep->e_name);
 ep->e_name = savename(gentempname(ep));
 ep->e_namlen = strlen(ep->e_name);
 renameit(oldname, myname(ep));
}
