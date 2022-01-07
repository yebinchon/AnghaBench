
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; int data; } ;
typedef TYPE_1__ heim_octet_string ;


 int memcmp (int ,int ,int) ;

int
der_heim_octet_string_cmp(const heim_octet_string *p,
     const heim_octet_string *q)
{
    if (p->length != q->length)
 return p->length - q->length;
    return memcmp(p->data, q->data, p->length);
}
