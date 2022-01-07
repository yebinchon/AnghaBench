
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ heim_base_is_tagged_object (void*) ;
 unsigned long heim_base_tagged_object_value (void*) ;

__attribute__((used)) static unsigned long
number_hash(void *ptr)
{
    if (heim_base_is_tagged_object(ptr))
 return heim_base_tagged_object_value(ptr);
    return (unsigned long)*(int *)ptr;
}
