
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;




 int sgx_load () ;
 int sgx_unload () ;

__attribute__((used)) static int
sgx_handler(module_t mod, int what, void *arg)
{
 int error;

 switch (what) {
 case 129:
  error = sgx_load();
  break;
 case 128:
  error = sgx_unload();
  break;
 default:
  error = 0;
  break;
 }

 return (error);
}
