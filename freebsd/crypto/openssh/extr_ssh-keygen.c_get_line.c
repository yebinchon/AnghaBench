
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int errno ;
 int fatal (char*,...) ;
 int fgetc (int *) ;
 int strerror (int ) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int
get_line(FILE *fp, char *line, size_t len)
{
 int c;
 size_t pos = 0;

 line[0] = '\0';
 while ((c = fgetc(fp)) != EOF) {
  if (pos >= len - 1)
   fatal("input line too long.");
  switch (c) {
  case '\r':
   c = fgetc(fp);
   if (c != EOF && c != '\n' && ungetc(c, fp) == EOF)
    fatal("unget: %s", strerror(errno));
   return pos;
  case '\n':
   return pos;
  }
  line[pos++] = c;
  line[pos] = '\0';
 }

 return -1;
}
