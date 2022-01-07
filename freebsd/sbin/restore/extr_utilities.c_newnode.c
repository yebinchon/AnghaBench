
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ e_type; int e_flags; } ;


 int EXISTED ;
 scalar_t__ NODE ;
 int Nflag ;
 int badentry (struct entry*,char*) ;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 scalar_t__ mkdir (char*,int) ;
 char* myname (struct entry*) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int uflag ;
 int vprintf (int ,char*,char*) ;

void
newnode(struct entry *np)
{
 char *cp;

 if (np->e_type != NODE)
  badentry(np, "newnode: not a node");
 cp = myname(np);
 if (!Nflag && mkdir(cp, 0777) < 0 && !uflag) {
  np->e_flags |= EXISTED;
  fprintf(stderr, "warning: %s: %s\n", cp, strerror(errno));
  return;
 }
 vprintf(stdout, "Make node %s\n", cp);
}
