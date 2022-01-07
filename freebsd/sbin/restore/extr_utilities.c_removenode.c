
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ e_type; int e_flags; int * e_entries; } ;


 scalar_t__ NODE ;
 int Nflag ;
 int REMOVED ;
 int TMPNAME ;
 int badentry (struct entry*,char*) ;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 char* myname (struct entry*) ;
 scalar_t__ rmdir (char*) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int vprintf (int ,char*,char*) ;

void
removenode(struct entry *ep)
{
 char *cp;

 if (ep->e_type != NODE)
  badentry(ep, "removenode: not a node");
 if (ep->e_entries != ((void*)0))
  badentry(ep, "removenode: non-empty directory");
 ep->e_flags |= REMOVED;
 ep->e_flags &= ~TMPNAME;
 cp = myname(ep);
 if (!Nflag && rmdir(cp) < 0) {
  fprintf(stderr, "warning: %s: %s\n", cp, strerror(errno));
  return;
 }
 vprintf(stdout, "Remove node %s\n", cp);
}
