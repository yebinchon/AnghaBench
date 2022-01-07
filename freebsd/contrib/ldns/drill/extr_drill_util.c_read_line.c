
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;

__attribute__((used)) static int
read_line(FILE *input, char *line, size_t len)
{
 int i;
 int c;

 for (i = 0; i < (int)len-1; i++) {
  c = getc(input);
  if (c == EOF) {
   return -1;
  } else if (c != '\n') {
   line[i] = c;
  } else {
   break;
  }
 }
 line[i] = '\0';
 return i;
}
