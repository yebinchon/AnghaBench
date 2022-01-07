
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;

__attribute__((used)) static void
skip_to_eol(FILE* in)
{
 int c;
 while((c = getc(in)) != EOF ) {
  if(c == '\n')
   return;
 }
}
