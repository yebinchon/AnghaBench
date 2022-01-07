
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int dummy; } ;
typedef int kvm_t ;


 char** kvm_argv (int *,struct kinfo_proc const*,int ,int) ;

char **
kvm_getargv(kvm_t *kd, const struct kinfo_proc *kp, int nchr)
{
 return (kvm_argv(kd, kp, 0, nchr));
}
