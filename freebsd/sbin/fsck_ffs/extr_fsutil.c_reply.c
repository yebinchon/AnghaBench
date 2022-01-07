
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bkgrdflag ;
 scalar_t__ feof (int ) ;
 int fflush (int ) ;
 scalar_t__ fswritefd ;
 char getc (int ) ;
 scalar_t__ nflag ;
 int pfatal (char*) ;
 scalar_t__ preen ;
 int printf (char*,...) ;
 scalar_t__ resolved ;
 int stdin ;
 int stdout ;
 int strcmp (char const*,char*) ;
 scalar_t__ yflag ;

int
reply(const char *question)
{
 int persevere;
 char c;

 if (preen)
  pfatal("INTERNAL ERROR: GOT TO reply()");
 persevere = !strcmp(question, "CONTINUE");
 printf("\n");
 if (!persevere && (nflag || (fswritefd < 0 && bkgrdflag == 0))) {
  printf("%s? no\n\n", question);
  resolved = 0;
  return (0);
 }
 if (yflag || (persevere && nflag)) {
  printf("%s? yes\n\n", question);
  return (1);
 }
 do {
  printf("%s? [yn] ", question);
  (void) fflush(stdout);
  c = getc(stdin);
  while (c != '\n' && getc(stdin) != '\n') {
   if (feof(stdin)) {
    resolved = 0;
    return (0);
   }
  }
 } while (c != 'y' && c != 'Y' && c != 'n' && c != 'N');
 printf("\n");
 if (c == 'y' || c == 'Y')
  return (1);
 resolved = 0;
 return (0);
}
