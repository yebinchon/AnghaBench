
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int VICMD ;
struct TYPE_9__ {char* alt_name; } ;
typedef TYPE_1__ SCR ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int CHAR2INT (TYPE_1__*,char*,scalar_t__,int *,size_t) ;
 int C_EDIT ;
 int FS_ALL ;
 int M_ERR ;
 int OOBLNO ;
 int argv_exp0 (TYPE_1__*,int *,int *,size_t) ;
 int ex_cinit (TYPE_1__*,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ file_m1 (TYPE_1__*,int ,int ) ;
 int msgq (TYPE_1__*,int ,char*) ;
 scalar_t__ strlen (char*) ;
 int v_exec_ex (TYPE_1__*,int *,int *) ;

int
v_switch(SCR *sp, VICMD *vp)
{
 EXCMD cmd;
 char *name;
 CHAR_T *wp;
 size_t wlen;





 if ((name = sp->alt_name) == ((void*)0)) {
  msgq(sp, M_ERR, "180|No previous file to edit");
  return (1);
 }


 if (file_m1(sp, 0, FS_ALL))
  return (1);

 ex_cinit(sp, &cmd, C_EDIT, 0, OOBLNO, OOBLNO, 0);
 CHAR2INT(sp, name, strlen(name) + 1, wp, wlen);
 argv_exp0(sp, &cmd, wp, wlen);
 return (v_exec_ex(sp, vp, &cmd));
}
