
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; scalar_t__ data; scalar_t__ negative; } ;
typedef TYPE_1__ heim_integer ;



size_t
der_length_heim_integer (const heim_integer *k)
{
    if (k->length == 0)
 return 1;
    if (k->negative)
 return k->length + (((~(((unsigned char *)k->data)[0])) & 0x80) ? 0 : 1);
    else
 return k->length + ((((unsigned char *)k->data)[0] & 0x80) ? 1 : 0);
}
