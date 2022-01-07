
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clogp ;
 int sysctl_teardown (int *) ;

__attribute__((used)) static
int
k_uvm_fini(void *arg)
{

 sysctl_teardown(&clogp);

 return 0;
}
