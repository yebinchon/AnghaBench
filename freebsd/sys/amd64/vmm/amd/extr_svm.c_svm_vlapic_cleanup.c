
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {int dummy; } ;


 int M_SVM_VLAPIC ;
 int free (struct vlapic*,int ) ;
 int vlapic_cleanup (struct vlapic*) ;

__attribute__((used)) static void
svm_vlapic_cleanup(void *arg, struct vlapic *vlapic)
{

        vlapic_cleanup(vlapic);
        free(vlapic, M_SVM_VLAPIC);
}
