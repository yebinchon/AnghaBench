
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int clearerr (int *) ;
 scalar_t__ feof (int *) ;
 int * fgets (char*,size_t,int *) ;
 int getchar () ;
 size_t strlen (char*) ;

int
get_line(FILE *stream, char *buf, size_t buflen, const char **errormsg)
{
 int rv, ch;
 size_t len;

 if (fgets(buf, buflen, stream) == ((void*)0)) {
  if (feof(stream)) {
   rv = -2;
   if (errormsg)
    *errormsg = "\nEOF received";
  } else {
   rv = -1;
   if (errormsg)
    *errormsg = "Error encountered";
  }
  clearerr(stream);
  return rv;
 }
 len = strlen(buf);
 if (buf[len-1] == '\n') {
  buf[--len] = '\0';
 } else if (len == buflen-1) {
  while ((ch = getchar()) != '\n' && ch != EOF)
   continue;
  if (errormsg)
   *errormsg = "Input line is too long";
  clearerr(stream);
  return -3;
 }
 if (errormsg)
  *errormsg = ((void*)0);
 return len;
}
