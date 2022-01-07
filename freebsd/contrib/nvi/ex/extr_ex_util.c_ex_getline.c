
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ibp; size_t ibp_len; } ;
typedef int SCR ;
typedef int FILE ;
typedef TYPE_1__ EX_PRIVATE ;


 int BINC_RETC (int *,char*,size_t,size_t) ;
 scalar_t__ EINTR ;
 int EOF ;
 TYPE_1__* EXP (int *) ;
 int clearerr (int *) ;
 scalar_t__ errno ;
 int feof (int *) ;
 int getc (int *) ;

int
ex_getline(SCR *sp, FILE *fp, size_t *lenp)
{
 EX_PRIVATE *exp;
 size_t off;
 int ch;
 char *p;

 exp = EXP(sp);
 for (errno = 0, off = 0, p = exp->ibp;;) {
  if (off >= exp->ibp_len) {
   BINC_RETC(sp, exp->ibp, exp->ibp_len, off + 1);
   p = exp->ibp + off;
  }
  if ((ch = getc(fp)) == EOF && !feof(fp)) {
   if (errno == EINTR) {
    errno = 0;
    clearerr(fp);
    continue;
   }
   return (1);
  }
  if (ch == EOF || ch == '\n') {
   if (ch == EOF && !off)
    return (1);
   *lenp = off;
   return (0);
  }
  *p++ = ch;
  ++off;
 }

}
