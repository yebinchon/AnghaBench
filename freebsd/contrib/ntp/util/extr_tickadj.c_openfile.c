
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char const*) ;
 int open (char const*,int) ;
 int perror (char*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static int
openfile(
 const char *name,
 int mode
 )
{
 int ifd;

 ifd = open(name, mode);
 if (ifd < 0)
 {
  (void) fprintf(stderr, "%s: open %s: ", progname, name);
  perror("");
  exit(1);
 }
 return ifd;
}
