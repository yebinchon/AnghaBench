
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int errno ;
 int free (int *) ;
 scalar_t__ gottoprec ;
 int * malloc (scalar_t__) ;
 int strcpy (int *,char const*) ;
 scalar_t__ strlen (char const*) ;
 int * toprec ;
 scalar_t__ topreclen ;

int
cgetset(const char *ent)
{
 if (ent == ((void*)0)) {
  if (toprec)
   free(toprec);
                toprec = ((void*)0);
                topreclen = 0;
                return (0);
        }
        topreclen = strlen(ent);
        if ((toprec = malloc (topreclen + 1)) == ((void*)0)) {
  errno = ENOMEM;
                return (-1);
 }
 gottoprec = 0;
        (void)strcpy(toprec, ent);
        return (0);
}
