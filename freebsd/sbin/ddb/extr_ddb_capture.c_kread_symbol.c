
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int kvm_t ;
struct TYPE_2__ {scalar_t__ n_value; } ;


 scalar_t__ kvm_read (int *,scalar_t__,void*,size_t) ;
 TYPE_1__* namelist ;

__attribute__((used)) static int
kread_symbol(kvm_t *kvm, int read_index, void *address, size_t size,
    size_t offset)
{
 ssize_t ret;

 ret = kvm_read(kvm, namelist[read_index].n_value + offset, address, size);
 if (ret < 0 || (size_t)ret != size)
  return (-1);
 return (0);
}
