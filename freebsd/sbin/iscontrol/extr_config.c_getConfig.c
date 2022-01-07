
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAX (int,int) ;
 char* get_line (int *) ;
 scalar_t__ isspace (unsigned char) ;
 char* strchr (char*,char) ;
 int strdup (char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;

__attribute__((used)) static int
getConfig(FILE *fd, char *key, char **Ar, int *nargs)
{
     char *lp, *p, **ar;
     int state, len, n;

     ar = Ar;
     if(key)
   len = strlen(key);
     else
   len = 0;
     state = 0;
     while((lp = get_line(fd)) != ((void*)0)) {
   for(; isspace((unsigned char)*lp); lp++)
        ;
   switch(state) {
   case 0:
        if((p = strchr(lp, '{')) != ((void*)0)) {
      while((--p > lp) && *p && isspace((unsigned char)*p));
      n = p - lp;
      if(len && strncmp(lp, key, MAX(n, len)) == 0)
    state = 2;
      else
    state = 1;
      continue;
        }
        break;

   case 1:
        if(*lp == '}')
      state = 0;
        continue;

   case 2:
        if(*lp == '}')
      goto done;

        break;
   }


   for(p = &lp[strlen(lp)-1]; isspace((unsigned char)*p); p--)
        *p = 0;
   if((*nargs)-- > 0)
        *ar++ = strdup(lp);
     }

 done:
     if(*nargs > 0)
   *ar = 0;
     *nargs = ar - Ar;
     return ar - Ar;
}
