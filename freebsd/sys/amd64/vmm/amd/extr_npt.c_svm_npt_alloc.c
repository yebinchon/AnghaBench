
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct vmspace {int dummy; } ;


 int npt_pinit ;
 struct vmspace* vmspace_alloc (int ,int ,int ) ;

struct vmspace *
svm_npt_alloc(vm_offset_t min, vm_offset_t max)
{

 return (vmspace_alloc(min, max, npt_pinit));
}
