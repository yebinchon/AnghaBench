
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t _heim_len_int (int const) ;

size_t
der_length_integer (const int *data)
{
    return _heim_len_int (*data);
}
