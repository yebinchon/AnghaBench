
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_nlist {int dummy; } ;
typedef int kvm_t ;


 int _kvm_nlist (int *,struct kvm_nlist*,int) ;

int
kvm_nlist2(kvm_t *kd, struct kvm_nlist *nl)
{





 return (_kvm_nlist(kd, nl, 1));
}
