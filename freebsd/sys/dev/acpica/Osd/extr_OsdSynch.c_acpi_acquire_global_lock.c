
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ACPI_GLOCK_OWNED ;
 int ACPI_GLOCK_PENDING ;
 scalar_t__ atomic_cmpset_32 (int volatile*,int,int) ;

int
acpi_acquire_global_lock(volatile uint32_t *lock)
{
 uint32_t new, old;

 do {
  old = *lock;
  new = (old & ~ACPI_GLOCK_PENDING) | ACPI_GLOCK_OWNED;
  if ((old & ACPI_GLOCK_OWNED) != 0)
   new |= ACPI_GLOCK_PENDING;
 } while (atomic_cmpset_32(lock, old, new) == 0);

 return ((new & ACPI_GLOCK_PENDING) == 0);
}
