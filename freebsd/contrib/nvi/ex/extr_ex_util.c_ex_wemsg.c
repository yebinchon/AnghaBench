
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int exm_t ;
typedef int SCR ;
typedef int CHAR_T ;


 int INT2CHAR (int *,int *,int ,char*,size_t) ;
 int STRLEN (int *) ;
 int ex_emsg (int *,char*,int ) ;

void
ex_wemsg(SCR* sp, CHAR_T *p, exm_t which)
{
 char *np;
 size_t nlen;

 if (p) INT2CHAR(sp, p, STRLEN(p), np, nlen);
 else np = ((void*)0);
 ex_emsg(sp, np, which);
}
