
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;

__attribute__((used)) static inline int
skip_line(FILE *f)
{
 int c;

 do
  c = getc(f);
 while (c != '\n' && c != EOF);

 return c;
}
