
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbm_res {int member_0; int member_1; } ;





 int iteration ;
 struct dbm_res page_byarch (int *) ;
 struct dbm_res page_bymacro (int ,int *) ;
 struct dbm_res page_bytitle (int,int *) ;

struct dbm_res
dbm_page_next(void)
{
 struct dbm_res res = {-1, 0};

 switch(iteration) {
 case 128:
  return res;
 case 130:
  return page_byarch(((void*)0));
 case 129:
  return page_bymacro(0, ((void*)0));
 default:
  return page_bytitle(iteration, ((void*)0));
 }
}
