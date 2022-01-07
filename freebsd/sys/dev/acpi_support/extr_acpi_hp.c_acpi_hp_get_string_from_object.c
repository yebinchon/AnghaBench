
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Length; int Pointer; } ;
struct TYPE_5__ {scalar_t__ Type; TYPE_1__ String; } ;
typedef TYPE_2__ ACPI_OBJECT ;


 scalar_t__ ACPI_TYPE_STRING ;
 int acpi_hp_hex_decode (char*) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static __inline char*
acpi_hp_get_string_from_object(ACPI_OBJECT* obj, char* dst, size_t size) {
 int length;

 dst[0] = 0;
 if (obj->Type == ACPI_TYPE_STRING) {
  length = obj->String.Length+1;
  if (length > size) {
   length = size - 1;
  }
  strlcpy(dst, obj->String.Pointer, length);
  acpi_hp_hex_decode(dst);
 }

 return (dst);
}
