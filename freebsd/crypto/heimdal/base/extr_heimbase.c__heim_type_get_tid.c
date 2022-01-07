
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* heim_type_t ;
typedef int heim_tid_t ;
struct TYPE_3__ {int tid; } ;



heim_tid_t
_heim_type_get_tid(heim_type_t type)
{
    return type->tid;
}
