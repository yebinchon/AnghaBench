
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int getc (int *) ;
 scalar_t__ isspace (int) ;

__attribute__((used)) static inline int
skip_space(FILE *f)
{
 int c;

 do {
  c = getc(f);
 } while (isspace(c) && c != '\n');

 return c;
}
