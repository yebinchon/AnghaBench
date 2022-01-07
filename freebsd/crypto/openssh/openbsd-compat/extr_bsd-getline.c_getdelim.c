
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 size_t BUFSIZ ;
 scalar_t__ feof (int *) ;
 int fgetc (int *) ;
 char* malloc (size_t) ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static ssize_t
getdelim(char **buf, size_t *bufsiz, int delimiter, FILE *fp)
{
 char *ptr, *eptr;


 if (*buf == ((void*)0) || *bufsiz == 0) {
  if ((*buf = malloc(BUFSIZ)) == ((void*)0))
   return -1;
  *bufsiz = BUFSIZ;
 }

 for (ptr = *buf, eptr = *buf + *bufsiz;;) {
  int c = fgetc(fp);
  if (c == -1) {
   if (feof(fp)) {
    ssize_t diff = (ssize_t)(ptr - *buf);
    if (diff != 0) {
     *ptr = '\0';
     return diff;
    }
   }
   return -1;
  }
  *ptr++ = c;
  if (c == delimiter) {
   *ptr = '\0';
   return ptr - *buf;
  }
  if (ptr + 2 >= eptr) {
   char *nbuf;
   size_t nbufsiz = *bufsiz * 2;
   ssize_t d = ptr - *buf;
   if ((nbuf = realloc(*buf, nbufsiz)) == ((void*)0))
    return -1;
   *buf = nbuf;
   *bufsiz = nbufsiz;
   eptr = nbuf + nbufsiz;
   ptr = nbuf + d;
  }
 }
}
