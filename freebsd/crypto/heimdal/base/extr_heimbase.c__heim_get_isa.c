
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct heim_base {int isa; } ;
typedef int heim_type_t ;
typedef int heim_object_t ;


 struct heim_base* PTR2BASE (int ) ;
 int heim_abort (char*) ;
 scalar_t__ heim_base_is_tagged (int ) ;
 scalar_t__ heim_base_is_tagged_object (int ) ;
 size_t heim_base_tagged_object_tid (int ) ;
 int * tagged_isa ;

heim_type_t
_heim_get_isa(heim_object_t ptr)
{
    struct heim_base *p;
    if (heim_base_is_tagged(ptr)) {
 if (heim_base_is_tagged_object(ptr))
     return tagged_isa[heim_base_tagged_object_tid(ptr)];
 heim_abort("not a supported tagged type");
    }
    p = PTR2BASE(ptr);
    return p->isa;
}
