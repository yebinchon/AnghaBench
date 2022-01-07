
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {struct TYPE_8__* mdl_next; int mdl_flags; } ;
typedef TYPE_1__ mdl ;
struct TYPE_9__ {TYPE_1__* irp_mdl; } ;
typedef TYPE_2__ irp ;


 TYPE_1__* ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int MDL_ZONE_ALLOCED ;
 scalar_t__ MDL_ZONE_SIZE ;
 int M_NOWAIT ;
 int M_ZERO ;
 int MmInitializeMdl (TYPE_1__*,void*,int ) ;
 scalar_t__ MmSizeOfMdl (void*,int ) ;
 int NonPagedPool ;
 scalar_t__ TRUE ;
 int mdl_zone ;
 int panic (char*) ;
 TYPE_1__* uma_zalloc (int ,int) ;

mdl *
IoAllocateMdl(void *vaddr, uint32_t len, uint8_t secondarybuf,
 uint8_t chargequota, irp *iopkt)
{
 mdl *m;
 int zone = 0;

 if (MmSizeOfMdl(vaddr, len) > MDL_ZONE_SIZE)
  m = ExAllocatePoolWithTag(NonPagedPool,
      MmSizeOfMdl(vaddr, len), 0);
 else {
  m = uma_zalloc(mdl_zone, M_NOWAIT | M_ZERO);
  zone++;
 }

 if (m == ((void*)0))
  return (((void*)0));

 MmInitializeMdl(m, vaddr, len);







 if (zone)
  m->mdl_flags = MDL_ZONE_ALLOCED;

 if (iopkt != ((void*)0)) {
  if (secondarybuf == TRUE) {
   mdl *last;
   last = iopkt->irp_mdl;
   while (last->mdl_next != ((void*)0))
    last = last->mdl_next;
   last->mdl_next = m;
  } else {
   if (iopkt->irp_mdl != ((void*)0))
    panic("leaking an MDL in IoAllocateMdl()");
   iopkt->irp_mdl = m;
  }
 }

 return (m);
}
