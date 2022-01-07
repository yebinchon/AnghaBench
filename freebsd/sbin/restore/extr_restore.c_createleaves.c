
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct entry {int e_flags; } ;
typedef scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ ino; } ;


 int EXTRACT ;
 int NEW ;
 int REMOVED ;
 scalar_t__ UFS_ROOTINO ;
 int badentry (struct entry*,char*) ;
 char command ;
 TYPE_1__ curfile ;
 int dumpsymtable (char*,long) ;
 int extractfile (char*) ;
 int fprintf (int ,char*,char*,...) ;
 struct entry* lookupino (scalar_t__) ;
 scalar_t__ lowerbnd (scalar_t__) ;
 scalar_t__ maxino ;
 char* myname (struct entry*) ;
 int panic (char*,...) ;
 int removeleaf (struct entry*) ;
 int skipfile () ;
 int skipmaps () ;
 int stderr ;
 int stdout ;
 long volno ;
 int vprintf (int ,char*) ;

void
createleaves(char *symtabfile)
{
 struct entry *ep;
 ino_t first;
 long curvol;

 if (command == 'R') {
  vprintf(stdout, "Continue extraction of new leaves\n");
 } else {
  vprintf(stdout, "Extract new leaves.\n");
  dumpsymtable(symtabfile, volno);
 }
 first = lowerbnd(UFS_ROOTINO);
 curvol = volno;
 while (curfile.ino < maxino) {
  first = lowerbnd(first);







  while (first < curfile.ino) {
   ep = lookupino(first);
   if (ep == ((void*)0))
    panic("%ju: bad first\n", (uintmax_t)first);
   fprintf(stderr, "%s: not found on tape\n", myname(ep));
   ep->e_flags &= ~(NEW|EXTRACT);
   first = lowerbnd(first);
  }







  if (first != curfile.ino) {
   fprintf(stderr, "expected next file %ju, got %ju\n",
       (uintmax_t)first, (uintmax_t)curfile.ino);
   skipfile();
   goto next;
  }
  ep = lookupino(curfile.ino);
  if (ep == ((void*)0))
   panic("unknown file on tape\n");
  if ((ep->e_flags & (NEW|EXTRACT)) == 0)
   badentry(ep, "unexpected file on tape");





  if ((ep->e_flags & EXTRACT) != 0) {
   removeleaf(ep);
   ep->e_flags &= ~REMOVED;
  }
  (void) extractfile(myname(ep));
  ep->e_flags &= ~(NEW|EXTRACT);





 next:
  if (curvol != volno) {
   dumpsymtable(symtabfile, volno);
   skipmaps();
   curvol = volno;
  }
 }
}
