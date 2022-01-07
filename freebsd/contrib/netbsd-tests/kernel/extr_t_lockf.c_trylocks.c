
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_start; int l_len; int l_whence; int l_type; } ;


 scalar_t__ EINTR ;
 int F_RDLCK ;
 int F_SETLKW ;
 int F_UNLCK ;
 int F_WRLCK ;
 int O_RDWR ;
 int SEEK_SET ;
 int close (int) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int fcntl (int,int ,struct flock*) ;
 int filesize ;
 int getpid () ;
 int lockfile ;
 int nlocks ;
 int open (int ,int ,int ) ;
 int printf (char*,int) ;
 int random_uint32 () ;
 int sleeptime ;
 int srand48 (int ) ;
 scalar_t__ usleep (int ) ;

__attribute__((used)) static void
trylocks(int id)
{
 int i, fd;

 srand48(getpid());

 fd = open (lockfile, O_RDWR, 0);

 if (fd < 0)
  err(1, "%s", lockfile);

 printf("%d: start\n", id);

 for (i = 0; i < nlocks; i++) {
  struct flock fl;

  fl.l_start = random_uint32() % filesize;
  fl.l_len = random_uint32() % filesize;
  switch (random_uint32() % 3) {
  case 0:
   fl.l_type = F_RDLCK;
   break;
  case 1:
   fl.l_type = F_WRLCK;
   break;
  case 2:
   fl.l_type = F_UNLCK;
   break;
  }
  fl.l_whence = SEEK_SET;

  (void)fcntl(fd, F_SETLKW, &fl);

  if (usleep(sleeptime) < 0)



    err(1, "usleep");
 }
 printf("%d: done\n", id);
 close (fd);
}
