
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_null_t ;


 int HEIM_TID_NULL ;
 int heim_base_make_tagged_object (int ,int ) ;

heim_null_t
heim_null_create(void)
{
    return heim_base_make_tagged_object(0, HEIM_TID_NULL);
}
