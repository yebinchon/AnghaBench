
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int CHAR_T ;


 int M_ERR ;
 int msgq_wstr (int *,int ,int *,char*) ;

void
opts_nomatch(
 SCR *sp,
 CHAR_T *name)
{
 msgq_wstr(sp, M_ERR, name,
     "033|set: no %s option: 'set all' gives all option values");
}
