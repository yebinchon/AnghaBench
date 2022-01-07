
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_bool_t ;


 int HEIM_TID_BOOL ;
 int heim_base_make_tagged_object (int,int ) ;

heim_bool_t
heim_bool_create(int val)
{
    return heim_base_make_tagged_object(!!val, HEIM_TID_BOOL);
}
