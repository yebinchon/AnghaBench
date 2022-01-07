
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int CHAR2INT (int *,char*,scalar_t__,int *,size_t) ;
 int C_SOURCE ;
 int OOBLNO ;
 int argv_exp0 (int *,int *,int *,size_t) ;
 int ex_cinit (int *,int *,int ,int ,int ,int ,int ) ;
 int ex_source (int *,int *) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
ex_run_file(SCR *sp, char *name)
{
 EXCMD cmd;
 CHAR_T *wp;
 size_t wlen;

 ex_cinit(sp, &cmd, C_SOURCE, 0, OOBLNO, OOBLNO, 0);
 CHAR2INT(sp, name, strlen(name)+1, wp, wlen);
 argv_exp0(sp, &cmd, wp, wlen - 1);
 return (ex_source(sp, &cmd));
}
