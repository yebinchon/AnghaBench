
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type_list {int dummy; } ;


 scalar_t__ memstat_kvm_malloc (struct memory_type_list*,void*) ;
 scalar_t__ memstat_kvm_uma (struct memory_type_list*,void*) ;

int
memstat_kvm_all(struct memory_type_list *mtlp, void *kvm_handle)
{

 if (memstat_kvm_malloc(mtlp, kvm_handle) < 0)
  return (-1);
 if (memstat_kvm_uma(mtlp, kvm_handle) < 0)
  return (-1);
 return (0);
}
