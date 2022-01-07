
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* heim_type_t ;
typedef scalar_t__ heim_tid_t ;
typedef scalar_t__ heim_object_t ;
struct TYPE_3__ {int (* cmp ) (scalar_t__,scalar_t__) ;} ;


 TYPE_1__* _heim_get_isa (scalar_t__) ;
 scalar_t__ heim_get_tid (scalar_t__) ;
 int stub1 (scalar_t__,scalar_t__) ;

int
heim_cmp(heim_object_t a, heim_object_t b)
{
    heim_tid_t ta, tb;
    heim_type_t isa;

    ta = heim_get_tid(a);
    tb = heim_get_tid(b);

    if (ta != tb)
 return ta - tb;

    isa = _heim_get_isa(a);

    if (isa->cmp)
 return isa->cmp(a, b);

    return (uintptr_t)a - (uintptr_t)b;
}
