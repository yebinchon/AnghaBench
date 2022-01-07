
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ heim_number_t ;


 int HEIM_TID_NUMBER ;
 scalar_t__ _heim_alloc_object (int *,int) ;
 int _heim_number_object ;
 scalar_t__ heim_base_make_tagged_object (int,int ) ;

heim_number_t
heim_number_create(int number)
{
    heim_number_t n;

    if (number < 0xffffff && number >= 0)
 return heim_base_make_tagged_object(number, HEIM_TID_NUMBER);

    n = _heim_alloc_object(&_heim_number_object, sizeof(int));
    if (n)
 *((int *)n) = number;
    return n;
}
