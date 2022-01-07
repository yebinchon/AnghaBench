
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glob_limit {int dummy; } ;
typedef int glob11_t ;
typedef scalar_t__ Char ;



 scalar_t__ const EOS ;


 int MAXPATHLEN ;

 scalar_t__ const RBRACKET ;
 int glob0 (scalar_t__ const*,int *,struct glob_limit*,int *) ;
 int globexp1 (scalar_t__*,int *,struct glob_limit*) ;
 int qprintf (char*,scalar_t__*) ;

__attribute__((used)) static int
globexp2(const Char *ptr, const Char *pattern, glob11_t *pglob,
    struct glob_limit *limit)
{
 int i, rv;
 Char *lm, *ls;
 const Char *pe, *pm, *pm1, *pl;
 Char patbuf[MAXPATHLEN];


 for (lm = patbuf, pm = pattern; pm != ptr; *lm++ = *pm++)
  continue;
 *lm = EOS;
 ls = lm;


 for (i = 0, pe = ++ptr; *pe != EOS; pe++)
  if (*pe == 129) {

   for (pm = pe++; *pe != RBRACKET && *pe != EOS; pe++)
    continue;
   if (*pe == EOS) {




    pe = pm;
   }
  }
  else if (*pe == 130)
   i++;
  else if (*pe == 128) {
   if (i == 0)
    break;
   i--;
  }


 if (i != 0 || *pe == EOS)
  return (glob0(pattern, pglob, limit, ((void*)0)));

 for (i = 0, pl = pm = ptr; pm <= pe; pm++)
  switch (*pm) {
  case 129:

   for (pm1 = pm++; *pm != RBRACKET && *pm != EOS; pm++)
    continue;
   if (*pm == EOS) {




    pm = pm1;
   }
   break;

  case 130:
   i++;
   break;

  case 128:
   if (i) {
       i--;
       break;
   }

  case 131:
   if (i && *pm == 131)
    break;
   else {

    for (lm = ls; (pl < pm); *lm++ = *pl++)
     continue;




    for (pl = pe + 1; (*lm++ = *pl++) != EOS;)
     continue;





    rv = globexp1(patbuf, pglob, limit);
    if (rv)
     return (rv);


    pl = pm + 1;
   }
   break;

  default:
   break;
  }
 return (0);
}
