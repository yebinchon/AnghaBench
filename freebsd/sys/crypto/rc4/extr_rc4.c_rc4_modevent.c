
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;



__attribute__((used)) static int
rc4_modevent(module_t mod, int type, void *unused)
{
 switch (type) {
 case 129:
  return 0;
 case 128:
  return 0;
 }
 return EINVAL;
}
