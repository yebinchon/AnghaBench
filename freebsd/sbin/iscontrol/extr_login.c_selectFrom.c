
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; } ;
typedef TYPE_1__ token_t ;


 char* strchr (char*,char) ;
 char* strdup (int *) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (int *,char*,int) ;

__attribute__((used)) static char *
selectFrom(char *str, token_t *list)
{
     char *sep, *sp;
     token_t *lp;
     int n;

     sp = str;
     do {
   sep = strchr(sp, ',');
   if(sep != ((void*)0))
        n = sep - sp;
   else
        n = strlen(sp);

   for(lp = list; lp->name != ((void*)0); lp++) {
        if(strncasecmp(lp->name, sp, n) == 0)
      return strdup(lp->name);
   }
   sp = sep + 1;
     } while(sep != ((void*)0));

     return ((void*)0);
}
