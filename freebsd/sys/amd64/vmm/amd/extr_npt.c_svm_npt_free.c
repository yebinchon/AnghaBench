
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;


 int vmspace_free (struct vmspace*) ;

void
svm_npt_free(struct vmspace *vmspace)
{

 vmspace_free(vmspace);
}
