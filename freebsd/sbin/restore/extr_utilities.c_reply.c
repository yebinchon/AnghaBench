
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int FAIL ;
 int GOOD ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 char getc (int ) ;
 int stderr ;
 int terminal ;

int
reply(char *question)
{
 int c;

 do {
  fprintf(stderr, "%s? [yn] ", question);
  (void) fflush(stderr);
  c = getc(terminal);
  while (c != '\n' && getc(terminal) != '\n')
   if (c == EOF)
    return (FAIL);
 } while (c != 'y' && c != 'n');
 if (c == 'y')
  return (GOOD);
 return (FAIL);
}
