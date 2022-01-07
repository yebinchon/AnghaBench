
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long global_mask ;

void ASN1_STRING_set_default_mask(unsigned long mask)
{
    global_mask = mask;
}
