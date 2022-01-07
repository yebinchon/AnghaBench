
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nresult { ____Placeholder_nresult } nresult ;
typedef int SCR ;


 int M_ERR ;




 int abort () ;
 int msgq (int *,int ,char*) ;

__attribute__((used)) static void
inc_err(SCR *sp, enum nresult nret)
{
 switch (nret) {
 case 131:
  break;
 case 130:
  abort();

 case 129:
  msgq(sp, M_ERR, "182|Resulting number too large");
  break;
 case 128:
  msgq(sp, M_ERR, "183|Resulting number too small");
  break;
 }
}
