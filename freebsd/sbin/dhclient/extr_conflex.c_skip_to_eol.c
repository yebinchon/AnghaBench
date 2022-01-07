
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int get_char (int *) ;

__attribute__((used)) static void
skip_to_eol(FILE *cfile)
{
 int c;

 do {
  c = get_char(cfile);
  if (c == EOF)
   return;
  if (c == '\n')
   return;
 } while (1);
}
