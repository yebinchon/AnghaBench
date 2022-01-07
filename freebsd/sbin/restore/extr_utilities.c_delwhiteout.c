
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ e_type; int e_flags; } ;


 scalar_t__ LEAF ;
 int Nflag ;
 int REMOVED ;
 int TMPNAME ;
 int badentry (struct entry*,char*) ;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 char* myname (struct entry*) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 scalar_t__ undelete (char*) ;
 int vprintf (int ,char*,char*) ;

void
delwhiteout(struct entry *ep)
{
 char *name;

 if (ep->e_type != LEAF)
  badentry(ep, "delwhiteout: not a leaf");
 ep->e_flags |= REMOVED;
 ep->e_flags &= ~TMPNAME;
 name = myname(ep);
 if (!Nflag && undelete(name) < 0) {
  fprintf(stderr, "warning: cannot delete whiteout %s: %s\n",
      name, strerror(errno));
  return;
 }
 vprintf(stdout, "Delete whiteout %s\n", name);
}
