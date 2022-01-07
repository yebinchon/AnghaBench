
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;
 char* strsep (char**,char*) ;

void
remopt(char *string, const char *opt)
{
 char *o, *p, *r;

 if (string == ((void*)0) || *string == '\0' || opt == ((void*)0) || *opt == '\0')
  return;

 r = string;

 for (p = string; (o = strsep(&p, ",")) != ((void*)0);) {
  if (strcmp(opt, o) != 0) {
   if (*r == ',' && *o != '\0')
    r++;
   while ((*r++ = *o++) != '\0')
       ;
   *--r = ',';
  }
 }
 *r = '\0';
}
