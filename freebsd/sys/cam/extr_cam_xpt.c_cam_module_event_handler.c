
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EBUSY ;
 int EOPNOTSUPP ;


 int xpt_init (int *) ;

__attribute__((used)) static int
cam_module_event_handler(module_t mod, int what, void *arg)
{
 int error;

 switch (what) {
 case 129:
  if ((error = xpt_init(((void*)0))) != 0)
   return (error);
  break;
 case 128:
  return EBUSY;
 default:
  return EOPNOTSUPP;
 }

 return 0;
}
