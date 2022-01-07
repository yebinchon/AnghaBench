
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int L_SET ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int lseek (int,int ,int ) ;
 int perror (char*) ;
 char* progname ;
 int stderr ;
 int write (int,char*,int) ;

__attribute__((used)) static void
writevar(
 int ofd,
 off_t off,
 int var
 )
{

 if (lseek(ofd, off, L_SET) == -1)
 {
  (void) fprintf(stderr, "%s: lseek fails: ", progname);
  perror("");
  exit(1);
 }
 if (write(ofd, (char *)&var, sizeof(int)) != sizeof(int))
 {
  (void) fprintf(stderr, "%s: write fails: ", progname);
  perror("");
  exit(1);
 }
 return;
}
