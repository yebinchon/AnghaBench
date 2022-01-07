
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int FREE (char*) ;
 int fgetc (int *) ;
 scalar_t__ openpam_straddch (char**,size_t*,size_t*,int) ;

char *
openpam_readline(FILE *f, int *lineno, size_t *lenp)
{
 char *line;
 size_t len, size;
 int ch;

 line = ((void*)0);
 if (openpam_straddch(&line, &size, &len, 0) != 0)
  return (((void*)0));
 for (;;) {
  ch = fgetc(f);

  if (ch == '#') {
   do {
    ch = fgetc(f);
   } while (ch != EOF && ch != '\n');
  }

  if (ch == EOF) {

   break;
  }

  if (ch == '\n') {
   if (lineno != ((void*)0))
    ++*lineno;

   if (len == 0)
    continue;

   if (line[len - 1] == '\\') {
    line[--len] = '\0';
    continue;
   }

   break;
  }

  if (openpam_straddch(&line, &size, &len, ch) != 0)
   goto fail;
 }
 if (len == 0)
  goto fail;
 if (lenp != ((void*)0))
  *lenp = len;
 return (line);
fail:
 FREE(line);
 return (((void*)0));
}
