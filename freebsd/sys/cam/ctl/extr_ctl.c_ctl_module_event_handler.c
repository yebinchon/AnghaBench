
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int ctl_init () ;
 int ctl_shutdown () ;

__attribute__((used)) static int
ctl_module_event_handler(module_t mod, int what, void *arg)
{

 switch (what) {
 case 129:
  return (ctl_init());
 case 128:
  return (ctl_shutdown());
 default:
  return (EOPNOTSUPP);
 }
}
