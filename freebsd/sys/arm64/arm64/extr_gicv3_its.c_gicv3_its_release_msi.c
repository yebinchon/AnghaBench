
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lpi_busy; } ;
struct its_dev {TYPE_1__ lpis; } ;
struct intr_irqsrc {int dummy; } ;
struct gicv3_its_irqsrc {int * gi_its_dev; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 struct its_dev* its_device_find (int ,int ) ;
 int its_device_release (int ,struct its_dev*) ;

__attribute__((used)) static int
gicv3_its_release_msi(device_t dev, device_t child, int count,
    struct intr_irqsrc **isrc)
{
 struct gicv3_its_irqsrc *girq;
 struct its_dev *its_dev;
 int i;

 its_dev = its_device_find(dev, child);

 KASSERT(its_dev != ((void*)0),
     ("gicv3_its_release_msi: Releasing a MSI interrupt with "
      "no ITS device"));
 KASSERT(its_dev->lpis.lpi_busy >= count,
     ("gicv3_its_release_msi: Releasing more interrupts than "
      "were allocated: releasing %d, allocated %d", count,
      its_dev->lpis.lpi_busy));
 for (i = 0; i < count; i++) {
  girq = (struct gicv3_its_irqsrc *)isrc[i];
  girq->gi_its_dev = ((void*)0);
 }
 its_dev->lpis.lpi_busy -= count;

 if (its_dev->lpis.lpi_busy == 0)
  its_device_release(dev, its_dev);

 return (0);
}
