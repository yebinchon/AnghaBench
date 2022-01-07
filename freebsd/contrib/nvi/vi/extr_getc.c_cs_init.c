
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cs_len; size_t cs_cno; int * cs_bp; int cs_ch; scalar_t__ cs_flags; int cs_lno; } ;
typedef TYPE_1__ VCS ;
typedef int SCR ;


 scalar_t__ CS_EMP ;
 int M_BERR ;
 scalar_t__ db_eget (int *,int ,int **,scalar_t__*,int*) ;
 int msgq (int *,int ,char*) ;
 scalar_t__ v_isempty (int *,scalar_t__) ;

int
cs_init(SCR *sp, VCS *csp)
{
 int isempty;

 if (db_eget(sp, csp->cs_lno, &csp->cs_bp, &csp->cs_len, &isempty)) {
  if (isempty)
   msgq(sp, M_BERR, "177|Empty file");
  return (1);
 }
 if (csp->cs_len == 0 || v_isempty(csp->cs_bp, csp->cs_len)) {
  csp->cs_cno = 0;
  csp->cs_flags = CS_EMP;
 } else {
  csp->cs_flags = 0;
  csp->cs_ch = csp->cs_bp[csp->cs_cno];
 }
 return (0);
}
