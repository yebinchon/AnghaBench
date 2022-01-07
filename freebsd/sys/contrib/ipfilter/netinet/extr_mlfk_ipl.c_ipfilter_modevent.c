
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;


 int ipf_modload () ;
 int ipf_modunload () ;

__attribute__((used)) static int
ipfilter_modevent(module_t mod, int type, void *unused)
{
 int error = 0;

 switch (type)
 {
 case 129 :
  error = ipf_modload();
  break;

 case 128 :
  error = ipf_modunload();
  break;
 default:
  error = EINVAL;
  break;
 }
 return error;
}
