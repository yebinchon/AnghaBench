
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int EOPNOTSUPP ;


 int offset ;
 int printf (char*,int) ;

__attribute__((used)) static int
load(struct module *module, int cmd, void *arg)
{
 int error = 0;

 switch (cmd) {
 case 129 :
  printf("syscall loaded at %d\n", offset);
  break;
 case 128 :
  printf("syscall unloaded from %d\n", offset);
  break;
 default :
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}
