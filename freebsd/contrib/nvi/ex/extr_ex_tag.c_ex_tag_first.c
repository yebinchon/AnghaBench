
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int C_TAG ;
 int F_CLR (int *,int ) ;
 int F_SET (int *,int ) ;
 int OOBLNO ;
 int SC_SCR_CENTER ;
 int SC_SCR_TOP ;
 int STRLEN (int *) ;
 int argv_exp0 (int *,int *,int *,int ) ;
 int ex_cinit (int *,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ ex_tag_push (int *,int *) ;

int
ex_tag_first(SCR *sp, CHAR_T *tagarg)
{
 EXCMD cmd;


 ex_cinit(sp, &cmd, C_TAG, 0, OOBLNO, OOBLNO, 0);
 argv_exp0(sp, &cmd, tagarg, STRLEN(tagarg));







 if (ex_tag_push(sp, &cmd))
  return (0);


 F_CLR(sp, SC_SCR_TOP);
 F_SET(sp, SC_SCR_CENTER);

 return (0);
}
