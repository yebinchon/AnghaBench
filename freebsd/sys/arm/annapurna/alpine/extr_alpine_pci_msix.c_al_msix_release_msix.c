
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int al_msix_release_msi (int ,int ,int,struct intr_irqsrc**) ;

__attribute__((used)) static int
al_msix_release_msix(device_t dev, device_t child, struct intr_irqsrc *isrc)
{

 return (al_msix_release_msi(dev, child, 1, &isrc));
}
