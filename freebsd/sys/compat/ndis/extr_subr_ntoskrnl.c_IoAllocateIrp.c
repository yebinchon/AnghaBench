
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int irp ;


 int * ExAllocatePoolWithTag (int ,int ,int ) ;
 int IoInitializeIrp (int *,int ,int ) ;
 int IoSizeOfIrp (int ) ;
 int NonPagedPool ;

__attribute__((used)) static irp *
IoAllocateIrp(uint8_t stsize, uint8_t chargequota)
{
 irp *i;

 i = ExAllocatePoolWithTag(NonPagedPool, IoSizeOfIrp(stsize), 0);
 if (i == ((void*)0))
  return (((void*)0));

 IoInitializeIrp(i, IoSizeOfIrp(stsize), stsize);

 return (i);
}
