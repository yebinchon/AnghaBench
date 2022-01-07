
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;




__attribute__((used)) static int
dtrace_test_modevent(module_t mod, int type, void *data)
{
 int error = 0;

 switch (type) {
 case 130:
  break;

 case 128:
  break;

 case 129:
  break;

 default:
  error = EOPNOTSUPP;
  break;

 }
 return (error);
}
