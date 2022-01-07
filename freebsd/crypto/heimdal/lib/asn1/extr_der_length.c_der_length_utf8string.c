
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_utf8_string ;


 size_t strlen (int const) ;

size_t
der_length_utf8string (const heim_utf8_string *data)
{
    return strlen(*data);
}
