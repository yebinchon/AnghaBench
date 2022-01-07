
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int assert (int) ;
 int errx (int,char*) ;
 char* fgetln (int *,size_t*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;

size_t
efgetln(FILE *fp, char **line)
{
 size_t rv;
 char *cp;

 cp = fgetln(fp, &rv);
 if (cp == ((void*)0)) {
  *line = ((void*)0);
  return (rv);
 }
 if (cp[rv - 1] == '\n') {
  cp[rv - 1] = '\0';
  *line = strdup(cp);
  if (*line == ((void*)0))
   errx(1, "cannot allocate memory");
  --rv;
 } else {
  *line = malloc(rv + 1);
  if (*line == ((void*)0))
   errx(1, "cannot allocate memory");
  memcpy(*line, cp, rv);
  (*line)[rv] = '\0';
 }
 assert(rv == strlen(*line));
 return (rv);
}
