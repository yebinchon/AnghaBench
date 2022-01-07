
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_rendezvous (int *,int ,int *,int *) ;
 int svm_disable ;

__attribute__((used)) static int
svm_cleanup(void)
{

 smp_rendezvous(((void*)0), svm_disable, ((void*)0), ((void*)0));
 return (0);
}
