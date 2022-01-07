
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int INT2CHAR (int *,int *,scalar_t__,char*,size_t) ;
 scalar_t__ STRLEN (int *) ;
 int csc_help (int *,char*) ;

__attribute__((used)) static int
cscope_help(SCR *sp, EXCMD *cmdp, CHAR_T *subcmd)
{
 char *np;
 size_t nlen;

 INT2CHAR(sp, subcmd, STRLEN(subcmd) + 1, np, nlen);
 return (csc_help(sp, np));
}
