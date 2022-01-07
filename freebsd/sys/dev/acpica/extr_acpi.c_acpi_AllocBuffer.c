
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Length; void* Pointer; } ;
typedef TYPE_1__ ACPI_BUFFER ;


 int M_ACPIDEV ;
 int M_NOWAIT ;
 TYPE_1__* malloc (int,int ,int ) ;

ACPI_BUFFER *
acpi_AllocBuffer(int size)
{
    ACPI_BUFFER *buf;

    if ((buf = malloc(size + sizeof(*buf), M_ACPIDEV, M_NOWAIT)) == ((void*)0))
 return (((void*)0));
    buf->Length = size;
    buf->Pointer = (void *)(buf + 1);
    return (buf);
}
