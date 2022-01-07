
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_visible_string ;


 size_t strlen (int const) ;

size_t
der_length_visible_string (const heim_visible_string *data)
{
    return strlen(*data);
}
