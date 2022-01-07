
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_2__ {int fd; scalar_t__ sent; } ;


 int SLAVES ;
 scalar_t__ S_ISFIFO (int ) ;
 int atomic (int ,int,char*,int) ;
 int close (int) ;
 int dumpabort (int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ host ;
 int msg (char*,...) ;
 int open (int ,int ) ;
 int pclose (int *) ;
 int perror (char*) ;
 scalar_t__ pipeout ;
 int * popenfp ;
 scalar_t__ popenout ;
 int quit (char*) ;
 int read ;
 int rmtclose () ;
 scalar_t__ rmtopen (int ,int ) ;
 TYPE_1__* slaves ;
 int sleep (int) ;
 int tape ;
 int tapefd ;
 scalar_t__ wait (int*) ;
 int writesize ;

void
trewind(void)
{
 struct stat sb;
 int f;
 int got;

 for (f = 0; f < SLAVES; f++) {
  if (slaves[f].sent) {
   if (atomic(read, slaves[f].fd, (char *)&got, sizeof got)
       != sizeof got) {
    perror("  DUMP: error reading command pipe in master");
    dumpabort(0);
   }
   slaves[f].sent = 0;
   if (got != writesize) {
    msg("EOT detected in last 2 tape records!\n");
    msg("Use a longer tape, decrease the size estimate\n");
    quit("or use no size estimate at all.\n");
   }
  }
  (void) close(slaves[f].fd);
 }
 while (wait((int *)((void*)0)) >= 0)
            ;

 if (pipeout)
  return;

 msg("Closing %s\n", tape);

 if (popenout) {
  tapefd = -1;
  (void)pclose(popenfp);
  popenfp = ((void*)0);
  return;
 }
 if (fstat(tapefd, &sb) == 0 && S_ISFIFO(sb.st_mode)) {
  (void)close(tapefd);
  return;
 }
 (void) close(tapefd);
 while ((f = open(tape, 0)) < 0)
  sleep (10);
 (void) close(f);
}
