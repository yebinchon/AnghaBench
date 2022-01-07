
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cs_flags; int cs_lno; size_t cs_cno; int * cs_bp; int cs_ch; int cs_len; } ;
typedef TYPE_1__ VCS ;
typedef int SCR ;






 int DBG_FATAL ;
 int abort () ;
 int db_get (int *,int,int ,int **,int *) ;
 int v_isempty (int *,int ) ;

int
cs_prev(SCR *sp, VCS *csp)
{
 switch (csp->cs_flags) {
 case 131:
 case 129:
  if (csp->cs_lno == 1) {
   csp->cs_flags = 128;
   break;
  }
  if (db_get(sp,
      --csp->cs_lno, DBG_FATAL, &csp->cs_bp, &csp->cs_len)) {
   ++csp->cs_lno;
   return (1);
  }
  if (csp->cs_len == 0 || v_isempty(csp->cs_bp, csp->cs_len)) {
   csp->cs_cno = 0;
   csp->cs_flags = 131;
  } else {
   csp->cs_flags = 0;
   csp->cs_cno = csp->cs_len - 1;
   csp->cs_ch = csp->cs_bp[csp->cs_cno];
  }
  break;
 case 130:
 case 0:
  if (csp->cs_cno == 0)
   if (csp->cs_lno == 1)
    csp->cs_flags = 128;
   else
    csp->cs_flags = 129;
  else
   csp->cs_ch = csp->cs_bp[--csp->cs_cno];
  break;
 case 128:
  break;
 default:
  abort();

 }
 return (0);
}
