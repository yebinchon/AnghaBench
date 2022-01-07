
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* heim_type_t ;
typedef int heim_tid_t ;
typedef int heim_object_t ;
struct TYPE_3__ {int tid; } ;


 TYPE_1__* _heim_get_isa (int ) ;

heim_tid_t
heim_get_tid(heim_object_t ptr)
{
    heim_type_t isa = _heim_get_isa(ptr);
    return isa->tid;
}
