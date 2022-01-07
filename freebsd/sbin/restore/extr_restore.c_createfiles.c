
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entry {int e_flags; } ;
typedef scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ ino; void* action; } ;


 scalar_t__ Dflag ;
 int EXTRACT ;
 int NEW ;
 void* SKIP ;
 scalar_t__ UFS_ROOTINO ;
 TYPE_1__ curfile ;
 int extractfile (char*) ;
 int fprintf (int ,char*,char*) ;
 int getvol (long) ;
 struct entry* lookupino (scalar_t__) ;
 scalar_t__ lowerbnd (scalar_t__) ;
 scalar_t__ maxino ;
 char* myname (struct entry*) ;
 int panic (char*) ;
 int skipdirs () ;
 int skipfile () ;
 int skipmaps () ;
 int stderr ;
 int stdout ;
 scalar_t__ upperbnd (scalar_t__) ;
 int volno ;
 int vprintf (int ,char*) ;

void
createfiles(void)
{
 ino_t first, next, last;
 struct entry *ep;
 long curvol;

 vprintf(stdout, "Extract requested files\n");
 curfile.action = SKIP;
 getvol((long)1);
 skipmaps();
 skipdirs();
 first = lowerbnd(UFS_ROOTINO);
 last = upperbnd(maxino - 1);
 for (;;) {
  curvol = volno;
  first = lowerbnd(first);
  last = upperbnd(last);



  if (first > last)
   return;
  if (Dflag) {
   if (curfile.ino == maxino)
    return;
   if((ep = lookupino(curfile.ino)) != ((void*)0) &&
       (ep->e_flags & (NEW|EXTRACT))) {
    goto justgetit;
   } else {
    skipfile();
    continue;
   }
  }







  if (curfile.ino > last && curfile.ino < maxino && volno > 1) {
   curfile.action = SKIP;
   getvol((long)0);
   skipmaps();
   skipdirs();
   continue;
  }





  if (curfile.ino < maxino) {
   next = lowerbnd(curfile.ino);
   while (next > curfile.ino && volno == curvol)
    skipfile();
   if (volno != curvol) {
    skipmaps();
    skipdirs();
    continue;
   }
  } else {





   next = first;
  }
  while (next < curfile.ino) {
   ep = lookupino(next);
   if (ep == ((void*)0))
    panic("corrupted symbol table\n");
   fprintf(stderr, "%s: not found on tape\n", myname(ep));
   ep->e_flags &= ~NEW;
   next = lowerbnd(next);
  }




  if (next == curfile.ino && next <= last) {
   ep = lookupino(next);
   if (ep == ((void*)0))
    panic("corrupted symbol table\n");
justgetit:
   (void) extractfile(myname(ep));
   ep->e_flags &= ~NEW;
   if (volno != curvol)
    skipmaps();
  }
 }
}
