
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_mmio_read {int readless_supported; } ;
struct ena_com_dev {struct ena_com_mmio_read mmio_read; } ;



void ena_com_set_mmio_read_mode(struct ena_com_dev *ena_dev, bool readless_supported)
{
 struct ena_com_mmio_read *mmio_read = &ena_dev->mmio_read;

 mmio_read->readless_supported = readless_supported;
}
