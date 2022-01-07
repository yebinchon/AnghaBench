
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {int callout; } ;


 int callout_drain (int *) ;

void
vlapic_cleanup(struct vlapic *vlapic)
{

 callout_drain(&vlapic->callout);
}
