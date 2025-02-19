
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {TYPE_4__* Pointer; int Length; } ;
struct TYPE_10__ {int Length; int * Pointer; } ;
struct TYPE_9__ {int Value; } ;
struct TYPE_12__ {TYPE_2__ Buffer; void* Type; TYPE_1__ Integer; } ;
struct TYPE_11__ {int Count; TYPE_4__* Pointer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OBJECT_LIST ;
typedef TYPE_4__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_5__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 void* ACPI_TYPE_BUFFER ;
 void* ACPI_TYPE_INTEGER ;
 int ACPI_UUID_LENGTH ;
 int AE_BUFFER_OVERFLOW ;
 int AcpiEvaluateObjectTyped (int ,char*,TYPE_3__*,TYPE_5__*,void*) ;
 int AcpiOsFree (TYPE_4__*) ;
 int bcopy (int *,int*,int) ;

ACPI_STATUS
acpi_EvaluateOSC(ACPI_HANDLE handle, uint8_t *uuid, int revision, int count,
    uint32_t *caps_in, uint32_t *caps_out, bool query)
{
 ACPI_OBJECT arg[4], *ret;
 ACPI_OBJECT_LIST arglist;
 ACPI_BUFFER buf;
 ACPI_STATUS status;

 arglist.Pointer = arg;
 arglist.Count = 4;
 arg[0].Type = ACPI_TYPE_BUFFER;
 arg[0].Buffer.Length = ACPI_UUID_LENGTH;
 arg[0].Buffer.Pointer = uuid;
 arg[1].Type = ACPI_TYPE_INTEGER;
 arg[1].Integer.Value = revision;
 arg[2].Type = ACPI_TYPE_INTEGER;
 arg[2].Integer.Value = count;
 arg[3].Type = ACPI_TYPE_BUFFER;
 arg[3].Buffer.Length = count * sizeof(*caps_in);
 arg[3].Buffer.Pointer = (uint8_t *)caps_in;
 caps_in[0] = query ? 1 : 0;
 buf.Pointer = ((void*)0);
 buf.Length = ACPI_ALLOCATE_BUFFER;
 status = AcpiEvaluateObjectTyped(handle, "_OSC", &arglist, &buf,
     ACPI_TYPE_BUFFER);
 if (ACPI_FAILURE(status))
  return (status);
 if (caps_out != ((void*)0)) {
  ret = buf.Pointer;
  if (ret->Buffer.Length != count * sizeof(*caps_out)) {
   AcpiOsFree(buf.Pointer);
   return (AE_BUFFER_OVERFLOW);
  }
  bcopy(ret->Buffer.Pointer, caps_out, ret->Buffer.Length);
 }
 AcpiOsFree(buf.Pointer);
 return (status);
}
