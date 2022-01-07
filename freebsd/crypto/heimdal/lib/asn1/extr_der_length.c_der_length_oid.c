
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_oid ;


 size_t len_oid (int const*) ;

size_t
der_length_oid (const heim_oid *k)
{
    return len_oid (k);
}
