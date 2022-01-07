
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int L_SET ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int lseek (int,int ,int ) ;
 int perror (char*) ;
 char* progname ;
 int read (int,char*,int) ;
 int stderr ;

__attribute__((used)) static void
readvar(
 int ifd,
 off_t off,
 int *var
 )
{
 int i;

 if (lseek(ifd, off, L_SET) == -1)
 {
  (void) fprintf(stderr, "%s: lseek fails: ", progname);
  perror("");
  exit(1);
 }
 i = read(ifd, (char *)var, sizeof(int));
 if (i < 0)
 {
  (void) fprintf(stderr, "%s: read fails: ", progname);
  perror("");
  exit(1);
 }
 if (i != sizeof(int))
 {
  (void) fprintf(stderr, "%s: read expected %d, got %d\n",
          progname, (int)sizeof(int), i);
  exit(1);
 }
 return;
}
