
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fv_val; int * fv_flag; } ;


 int CCDF_MIRROR ;
 int CCDF_UNIFORM ;
 scalar_t__ ERANGE ;
 int err (int,char*) ;
 scalar_t__ errno ;
 TYPE_1__* flagvaltab ;
 int free (char*) ;
 scalar_t__ strcmp (char*,int *) ;
 char* strdup (char*) ;
 char* strtok (char*,char*) ;
 scalar_t__ strtol (char*,char**,int ) ;

__attribute__((used)) static int
flags_to_val(char *flags)
{
 char *cp, *tok;
 int i, tmp, val;

 errno = 0;
 val = (int)strtol(flags, &cp, 0);
 if ((errno != ERANGE) && (*cp == '\0')) {
  if (val & ~(CCDF_UNIFORM|CCDF_MIRROR))
   return (-1);
  return (val);
 }


 if ((cp = strdup(flags)) == ((void*)0))
  err(1, "no memory to parse flags");
 tmp = 0;
 for (tok = cp; (tok = strtok(tok, ",")) != ((void*)0); tok = ((void*)0)) {
  for (i = 0; flagvaltab[i].fv_flag != ((void*)0); ++i)
   if (strcmp(tok, flagvaltab[i].fv_flag) == 0)
    break;
  if (flagvaltab[i].fv_flag == ((void*)0)) {
   free(cp);
   return (-1);
  }
  tmp |= flagvaltab[i].fv_val;
 }


 free(cp);
 return (tmp);
}
