
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int dummy; } ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_NOMATCH ;
 scalar_t__ Strcmp (int *,int *) ;
 int VAR_FIRST ;
 int VAR_LAST ;
 int VAR_NOGLOB ;
 int blkfree (int **) ;
 int ** globall (int **,int) ;
 int setq (int const*,int **,struct varent*,int) ;
 int stderror (int) ;
 int tglob (int **) ;
 int xfree (int *) ;

void
set1(const Char *var, Char **vec, struct varent *head, int flags)
{
    Char **oldv = vec;

    if ((flags & VAR_NOGLOB) == 0) {
 int gflag;

 gflag = tglob(oldv);
 if (gflag) {
     vec = globall(oldv, gflag);
     if (vec == 0) {
  blkfree(oldv);
  stderror(ERR_NAME | ERR_NOMATCH);
     }
     blkfree(oldv);
 }
    }



    if ( flags & (VAR_FIRST | VAR_LAST) ) {






 if (vec && vec[0] && vec[1]) {
     int i, j;
     int num_items;

     for (num_items = 0; vec[num_items]; num_items++)
         continue;
     if (flags & VAR_FIRST) {

  for (i = 1; i < num_items; i++)
      for (j = 0; j < i; j++)

   if (vec[i] && vec[j] && Strcmp(vec[j], vec[i]) == 0) {
       xfree(vec[i]);
       vec[i] = ((void*)0);
       break;
   }
     } else if (flags & VAR_LAST) {

  for (i = 0; i < num_items - 1; i++)
      for (j = i + 1; j < num_items; j++)

   if (vec[i] && vec[j] && Strcmp(vec[j], vec[i]) == 0) {

       xfree(vec[i]);
       vec[i] = ((void*)0);
   }
     }

     for (j = i = 0; i < num_items; i++)
        if (vec[i])
    vec[j++] = vec[i];


     for (; j < num_items; j++)
   vec[j] = ((void*)0);
 }

 flags &= ~(VAR_FIRST|VAR_LAST);
    }
    setq(var, vec, head, flags);
}
