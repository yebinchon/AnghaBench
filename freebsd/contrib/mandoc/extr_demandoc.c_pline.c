
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char) ;

__attribute__((used)) static void
pline(int line, int *linep, int *col, int list)
{

 if (list)
  return;






 while (*linep < line) {
  putchar('\n');
  (*linep)++;
 }

 *col = 0;
}
