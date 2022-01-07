
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_2__ {int ipf_refcnt; } ;


 int EINVAL ;


 TYPE_1__ ipfmain ;
 int ipfrule_add () ;
 int ipfrule_remove () ;

__attribute__((used)) static int
ipfrule_modevent(module_t mod, int type, void *unused)
{
 int error = 0;

 switch (type)
 {
 case 129 :
  error = ipfrule_add();
  if (!error)
   ipfmain.ipf_refcnt++;
  break;
 case 128 :
  error = ipfrule_remove();
  if (!error)
   ipfmain.ipf_refcnt--;
  break;
 default:
  error = EINVAL;
  break;
 }
 return error;
}
