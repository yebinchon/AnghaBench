
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef int SCR ;


 int M_ERR ;
 char* O_STR (int *,int) ;
 int msgq_wstr (int *,int ,int ,char*) ;
 TYPE_1__* optlist ;

int
opts_empty(
 SCR *sp,
 int off,
 int silent)
{
 char *p;

 if ((p = O_STR(sp, off)) == ((void*)0) || p[0] == '\0') {
  if (!silent)
   msgq_wstr(sp, M_ERR, optlist[off].name,
       "305|No %s edit option specified");
  return (1);
 }
 return (0);
}
