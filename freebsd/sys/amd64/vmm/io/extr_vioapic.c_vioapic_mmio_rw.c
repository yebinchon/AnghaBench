
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vioapic {scalar_t__ ioregsel; } ;


 scalar_t__ IOREGSEL ;
 scalar_t__ IOWIN ;
 scalar_t__ VIOAPIC_BASE ;
 int VIOAPIC_LOCK (struct vioapic*) ;
 int VIOAPIC_UNLOCK (struct vioapic*) ;
 scalar_t__ vioapic_read (struct vioapic*,int,scalar_t__) ;
 int vioapic_write (struct vioapic*,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
vioapic_mmio_rw(struct vioapic *vioapic, int vcpuid, uint64_t gpa,
    uint64_t *data, int size, bool doread)
{
 uint64_t offset;

 offset = gpa - VIOAPIC_BASE;





 if (size != 4 || (offset != IOREGSEL && offset != IOWIN)) {
  if (doread)
   *data = 0;
  return (0);
 }

 VIOAPIC_LOCK(vioapic);
 if (offset == IOREGSEL) {
  if (doread)
   *data = vioapic->ioregsel;
  else
   vioapic->ioregsel = *data;
 } else {
  if (doread) {
   *data = vioapic_read(vioapic, vcpuid,
       vioapic->ioregsel);
  } else {
   vioapic_write(vioapic, vcpuid, vioapic->ioregsel,
       *data);
  }
 }
 VIOAPIC_UNLOCK(vioapic);

 return (0);
}
