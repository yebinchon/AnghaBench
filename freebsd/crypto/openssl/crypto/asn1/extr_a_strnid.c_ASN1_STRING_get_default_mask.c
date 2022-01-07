
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long global_mask ;

unsigned long ASN1_STRING_get_default_mask(void)
{
    return global_mask;
}
