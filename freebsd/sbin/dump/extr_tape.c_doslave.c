
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct req {size_t count; scalar_t__ dblk; } ;
struct TYPE_2__ {scalar_t__* tblock; struct req* req; } ;


 scalar_t__ ENOSPC ;
 int O_RDONLY ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int TP_BSIZE ;
 int atomic (int (*) (int ,scalar_t__,int),int,char*,int) ;
 int blkread (scalar_t__,scalar_t__,int) ;
 scalar_t__ caught ;
 int close (int ) ;
 int disk ;
 int diskfd ;
 scalar_t__ errno ;
 scalar_t__ host ;
 int jmpbuf ;
 int kill (int,int ) ;
 int master ;
 size_t ntrec ;
 int open (int ,int ) ;
 int pause () ;
 int printf (char*,int,int,...) ;
 int quit (char*,...) ;
 int read (int ,scalar_t__,int) ;
 int ready ;
 int reqsiz ;
 int rmtwrite (scalar_t__,int) ;
 scalar_t__ setjmp (int ) ;
 int sigpause (int ) ;
 TYPE_1__* slp ;
 int strerror (scalar_t__) ;
 int tapefd ;
 size_t trecno ;
 int write (int ,scalar_t__,int) ;
 int writesize ;

__attribute__((used)) static void
doslave(int cmd, int slave_number)
{
 int nread;
 int nextslave, size, wrote, eot_count;




 (void) close(diskfd);
 if ((diskfd = open(disk, O_RDONLY)) < 0)
  quit("slave couldn't reopen disk: %s\n", strerror(errno));




 if ((nread = atomic(read, cmd, (char *)&nextslave, sizeof nextslave))
     != sizeof nextslave) {
  quit("master/slave protocol botched - didn't get pid of next slave.\n");
 }




 while ((nread = atomic(read, cmd, (char *)slp->req, reqsiz)) == reqsiz) {
  struct req *p = slp->req;

  for (trecno = 0; trecno < ntrec;
       trecno += p->count, p += p->count) {
   if (p->dblk) {
    blkread(p->dblk, slp->tblock[trecno],
     p->count * TP_BSIZE);
   } else {
    if (p->count != 1 || atomic(read, cmd,
        (char *)slp->tblock[trecno],
        TP_BSIZE) != TP_BSIZE)
           quit("master/slave protocol botched.\n");
   }
  }
  if (setjmp(jmpbuf) == 0) {
   ready = 1;
   if (!caught)
    (void) pause();
  }
  ready = 0;
  caught = 0;


  eot_count = 0;
  size = 0;

  wrote = 0;
  while (eot_count < 10 && size < writesize) {






    wrote = write(tapefd, slp->tblock[0]+size,
        writesize-size);



   if (wrote < 0)
    break;
   if (wrote == 0)
    eot_count++;
   size += wrote;
  }
  if (wrote < 0 && errno == ENOSPC) {
   wrote = 0;
   eot_count++;
  }

  if (eot_count > 0)
   size = 0;

  if (wrote < 0) {
   (void) kill(master, SIGUSR1);
   for (;;)
    (void) sigpause(0);
  } else {




   (void) atomic(write, cmd, (char *)&size, sizeof size);
  }





  (void) kill(nextslave, SIGUSR2);
 }
 if (nread != 0)
  quit("error reading command pipe: %s\n", strerror(errno));
}
