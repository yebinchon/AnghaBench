
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cs_flags; size_t cs_cno; int * cs_bp; int cs_ch; int cs_len; int cs_lno; } ;
typedef TYPE_1__ VCS ;
typedef int SCR ;
typedef int CHAR_T ;





 int abort () ;
 int db_get (int *,int ,int ,int **,int *) ;
 int v_isempty (int *,int ) ;

int
cs_next(SCR *sp, VCS *csp)
{
 CHAR_T *p;

 switch (csp->cs_flags) {
 case 130:
 case 128:
  if (db_get(sp, ++csp->cs_lno, 0, &p, &csp->cs_len)) {
   --csp->cs_lno;
   csp->cs_flags = 129;
  } else {
   csp->cs_bp = p;
   if (csp->cs_len == 0 ||
       v_isempty(csp->cs_bp, csp->cs_len)) {
    csp->cs_cno = 0;
    csp->cs_flags = 130;
   } else {
    csp->cs_flags = 0;
    csp->cs_ch = csp->cs_bp[csp->cs_cno = 0];
   }
  }
  break;
 case 0:
  if (csp->cs_cno == csp->cs_len - 1)
   csp->cs_flags = 128;
  else
   csp->cs_ch = csp->cs_bp[++csp->cs_cno];
  break;
 case 129:
  break;
 default:
  abort();

 }
 return (0);
}
