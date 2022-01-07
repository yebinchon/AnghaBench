
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int kvm_t ;


 size_t SSIZE_MAX ;
 scalar_t__ kvm_read (int *,unsigned long,void*,size_t) ;

int
kvm_read_all(kvm_t *kd, unsigned long addr, void *buf, size_t nbytes)
{
 ssize_t error;

 if (nbytes >= SSIZE_MAX)
  return (0);
 error = kvm_read(kd, addr, buf, nbytes);
 return (error == (ssize_t)(nbytes));
}
