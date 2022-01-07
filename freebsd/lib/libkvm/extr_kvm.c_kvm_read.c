
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int ssize_t ;
typedef int kvm_t ;


 int kvm_read2 (int *,int ,void*,size_t) ;

ssize_t
kvm_read(kvm_t *kd, u_long kva, void *buf, size_t len)
{

 return (kvm_read2(kd, kva, buf, len));
}
