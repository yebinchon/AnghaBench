
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t _heim_len_int (unsigned int const) ;

size_t
der_length_enumerated (const unsigned *data)
{
  return _heim_len_int (*data);
}
