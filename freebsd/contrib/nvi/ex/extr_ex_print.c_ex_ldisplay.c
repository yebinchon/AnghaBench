
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int SCR ;
typedef int CHAR_T ;


 int E_C_LIST ;
 int INTERRUPTED (int *) ;
 int * L (char*) ;
 scalar_t__ LF_ISSET (int ) ;
 scalar_t__ ex_prchars (int *,int const*,size_t*,int,scalar_t__,int ) ;
 int ex_puts (int *,char*) ;

int
ex_ldisplay(SCR *sp, const CHAR_T *p, size_t len, size_t col, u_int flags)
{
 if (len > 0 && ex_prchars(sp, p, &col, len, LF_ISSET(E_C_LIST), 0))
  return (1);
 if (!INTERRUPTED(sp) && LF_ISSET(E_C_LIST)) {
  p = L("$");
  if (ex_prchars(sp, p, &col, 1, LF_ISSET(E_C_LIST), 0))
   return (1);
 }
 if (!INTERRUPTED(sp))
  (void)ex_puts(sp, "\n");
 return (0);
}
