
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int ARG_CHAR_T ;


 int KEY_NAME (int *,int ) ;
 int M_BERR ;
 int msgq (int *,int ,char*,int ) ;

__attribute__((used)) static void
notfound(SCR *sp, ARG_CHAR_T ch)
{
 msgq(sp, M_BERR, "179|%s not found", KEY_NAME(sp, ch));
}
