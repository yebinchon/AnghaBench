
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t Length; void* Pointer; } ;
struct TYPE_8__ {size_t Length; void* Pointer; } ;
struct TYPE_7__ {TYPE_4__* Elements; } ;
struct TYPE_9__ {int Type; TYPE_1__ Buffer; TYPE_3__ String; TYPE_2__ Package; } ;
typedef TYPE_4__ ACPI_OBJECT ;




 int E2BIG ;
 int EINVAL ;
 int strlcpy (void*,void*,size_t) ;

int
acpi_PkgStr(ACPI_OBJECT *res, int idx, void *dst, size_t size)
{
    ACPI_OBJECT *obj;
    void *ptr;
    size_t length;

    obj = &res->Package.Elements[idx];
    if (obj == ((void*)0))
 return (EINVAL);

    switch (obj->Type) {
    case 128:
 ptr = obj->String.Pointer;
 length = obj->String.Length;
 break;
    case 129:
 ptr = obj->Buffer.Pointer;
 length = obj->Buffer.Length;
 break;
    default:
 return (EINVAL);
    }


    if (++length > size)
 return (E2BIG);

    strlcpy(dst, ptr, length);
    return (0);
}
