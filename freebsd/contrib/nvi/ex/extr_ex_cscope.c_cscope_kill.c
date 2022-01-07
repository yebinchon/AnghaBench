
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;
typedef scalar_t__ CHAR_T ;


 int INT2CHAR (int *,scalar_t__*,scalar_t__,char*,size_t) ;
 scalar_t__ STRLEN (scalar_t__*) ;
 int atoi (char*) ;
 int terminate (int *,int *,int) ;

__attribute__((used)) static int
cscope_kill(SCR *sp, EXCMD *cmdp, CHAR_T *cn)
{
 char *np;
 size_t nlen;
 int n = 1;

 if (*cn) {
  INT2CHAR(sp, cn, STRLEN(cn) + 1, np, nlen);
  n = atoi(np);
 }
 return (terminate(sp, ((void*)0), n));
}
