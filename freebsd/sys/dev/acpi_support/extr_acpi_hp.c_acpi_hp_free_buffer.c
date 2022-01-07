
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Pointer; } ;
typedef TYPE_1__ ACPI_BUFFER ;


 int AcpiOsFree (scalar_t__) ;

__attribute__((used)) static __inline void
acpi_hp_free_buffer(ACPI_BUFFER* buf) {
 if (buf && buf->Pointer) {
  AcpiOsFree(buf->Pointer);
 }
}
