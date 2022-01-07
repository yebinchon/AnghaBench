
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int recno_t ;
typedef scalar_t__ UCHAR_T ;
typedef int SCR ;
typedef scalar_t__ CHAR_T ;
typedef scalar_t__ ARG_CHAR_T ;


 int FREE_SPACEW (int *,scalar_t__*,size_t) ;
 int GET_SPACE_RETW (int *,scalar_t__*,size_t,size_t) ;
 scalar_t__ ISLOWER (scalar_t__) ;
 scalar_t__ ISUPPER (scalar_t__) ;
 int MEMMOVE (scalar_t__*,scalar_t__*,size_t) ;
 scalar_t__ TOLOWER (scalar_t__) ;
 scalar_t__ TOUPPER (scalar_t__) ;
 scalar_t__ db_set (int *,int ,scalar_t__*,size_t) ;

__attribute__((used)) static int
ulcase(SCR *sp, recno_t lno, CHAR_T *lp, size_t len, size_t scno, size_t ecno)
{
 size_t blen;
 int change, rval;
 ARG_CHAR_T ch;
 CHAR_T *p, *t, *bp;

 GET_SPACE_RETW(sp, bp, blen, len);
 MEMMOVE(bp, lp, len);

 change = rval = 0;
 for (p = bp + scno, t = bp + ecno + 1; p < t; ++p) {
  ch = (UCHAR_T)*p;
  if (ISLOWER(ch)) {
   *p = TOUPPER(ch);
   change = 1;
  } else if (ISUPPER(ch)) {
   *p = TOLOWER(ch);
   change = 1;
  }
 }

 if (change && db_set(sp, lno, bp, len))
  rval = 1;

 FREE_SPACEW(sp, bp, blen);
 return (rval);
}
