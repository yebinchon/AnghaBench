
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disklabel {int dummy; } ;
typedef int label ;
typedef int FILE ;


 int EOF ;
 int bzero (char*,int) ;
 int display (int *,int *) ;
 int editit () ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fflush (int ) ;
 int * fopen (int ,char*) ;
 int getasciilabel (int *,struct disklabel*) ;
 int getchar () ;
 struct disklabel lab ;
 int mkstemp (int ) ;
 int printf (char*) ;
 int stdout ;
 int tmpfil ;
 int unlink (int ) ;
 int warnx (char*,int ) ;
 scalar_t__ writelabel () ;

__attribute__((used)) static int
edit(void)
{
 int c, fd;
 struct disklabel label;
 FILE *fp;

 if ((fd = mkstemp(tmpfil)) == -1 ||
     (fp = fdopen(fd, "w")) == ((void*)0)) {
  warnx("can't create %s", tmpfil);
  return (1);
 }
 display(fp, ((void*)0));
 fclose(fp);
 for (;;) {
  if (!editit())
   break;
  fp = fopen(tmpfil, "r");
  if (fp == ((void*)0)) {
   warnx("can't reopen %s for reading", tmpfil);
   break;
  }
  bzero((char *)&label, sizeof(label));
  c = getasciilabel(fp, &label);
  fclose(fp);
  if (c) {
   lab = label;
   if (writelabel() == 0) {
    (void) unlink(tmpfil);
    return (0);
   }
  }
  printf("re-edit the label? [y]: ");
  fflush(stdout);
  c = getchar();
  if (c != EOF && c != (int)'\n')
   while (getchar() != (int)'\n')
    ;
  if (c == (int)'n')
   break;
 }
 (void) unlink(tmpfil);
 return (1);
}
