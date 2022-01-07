
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int al_msix_alloc_msi (int ,int ,int,int,int *,struct intr_irqsrc**) ;

__attribute__((used)) static int
al_msix_alloc_msix(device_t dev, device_t child, device_t *pic,
    struct intr_irqsrc **isrcp)
{

 return (al_msix_alloc_msi(dev, child, 1, 1, pic, isrcp));
}
