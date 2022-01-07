
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int glob_t ;
typedef scalar_t__ Char ;



 scalar_t__ const CHAR_EOS ;



 scalar_t__ const CHAR_RBRACKET ;
 int MaxPathLen ;
 int glob0 (scalar_t__*,int *) ;
 int globexp1 (scalar_t__*,int *) ;
 int qprintf (char*,scalar_t__*) ;

__attribute__((used)) static int globexp2(const Char *ptr, const Char *pattern,
      glob_t *pglob, int *rv)
{
 int i;
 Char *lm, *ls;
 const Char *pe, *pm, *pl;
 Char patbuf[MaxPathLen + 1];


 for (lm = patbuf, pm = pattern; pm != ptr; *lm++ = *pm++)
  continue;
 ls = lm;


 for (i = 0, pe = ++ptr; *pe; pe++)
  if (*pe == 129) {

   for (pm = pe++; *pe != CHAR_RBRACKET && *pe != CHAR_EOS; pe++)
    continue;
   if (*pe == CHAR_EOS) {




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


 if (i != 0 || *pe == CHAR_EOS) {
  *rv = glob0(patbuf, pglob);
  return 0;
 }

 for (i = 0, pl = pm = ptr; pm <= pe; pm++)
  switch (*pm) {
  case 129:

   for (pl = pm++; *pm != CHAR_RBRACKET && *pm != CHAR_EOS; pm++)
    continue;
   if (*pm == CHAR_EOS) {




    pm = pl;
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




    for (pl = pe + 1; (*lm++ = *pl++) != CHAR_EOS;)
     continue;





    *rv = globexp1(patbuf, pglob);


    pl = pm + 1;
   }
   break;

  default:
   break;
  }
 *rv = 0;
 return 0;
}
