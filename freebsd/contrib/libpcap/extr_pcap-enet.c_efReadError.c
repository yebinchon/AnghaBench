
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ lseek (int,int ,int ) ;
 int perror (char*) ;
 int stderr ;

__attribute__((used)) static void
efReadError(int fid, char *msg)
{
 if (errno == EINVAL) {
  if (lseek(fid, 0, 0) < 0) {
   perror("tcpdump: efReadError/lseek");
   exit(-1);
  }
  else
   return;
 }
 else {
  (void) fprintf(stderr, "tcpdump: ");
  perror(msg);
  exit(-1);
 }
}
