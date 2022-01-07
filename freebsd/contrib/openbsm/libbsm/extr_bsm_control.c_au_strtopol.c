
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ap_policy; int * ap_str; } ;


 int EINVAL ;
 TYPE_1__* au_polstr ;
 int errno ;
 int free (char*) ;
 scalar_t__ strcmp (char*,int *) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;

int
au_strtopol(const char *polstr, int *policy)
{
 char *bufp, *string;
 char *buffer;
 int i, matched;

 *policy = 0;
 buffer = strdup(polstr);
 if (buffer == ((void*)0))
  return (-1);

 bufp = buffer;
 while ((string = strsep(&bufp, ",")) != ((void*)0)) {
  matched = i = 0;

  do {
   if (strcmp(string, au_polstr[i].ap_str) == 0) {
    *policy |= au_polstr[i].ap_policy;
    matched = 1;
    break;
   }
  } while (((void*)0) != au_polstr[++i].ap_str);

  if (!matched) {
   free(buffer);
   errno = EINVAL;
   return (-1);
  }
 }
 free(buffer);
 return (0);
}
