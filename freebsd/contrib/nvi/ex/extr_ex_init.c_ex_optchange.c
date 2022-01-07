
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int SCR ;



 int ex_tagf_alloc (int *,char*) ;

int
ex_optchange(SCR *sp, int offset, char *str, u_long *valp)
{
 switch (offset) {
 case 128:
  return (ex_tagf_alloc(sp, str));
 }
 return (0);
}
