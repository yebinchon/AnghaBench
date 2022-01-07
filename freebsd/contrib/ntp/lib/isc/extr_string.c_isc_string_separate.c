
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
isc_string_separate(char **stringp, const char *delim) {
 char *string = *stringp;
 char *s;
 const char *d;
 char sc, dc;

 if (string == ((void*)0))
  return (((void*)0));

 for (s = string; (sc = *s) != '\0'; s++)
  for (d = delim; (dc = *d) != '\0'; d++)
   if (sc == dc) {
    *s++ = '\0';
    *stringp = s;
    return (string);
   }
 *stringp = ((void*)0);
 return (string);
}
