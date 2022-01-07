
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ negative; scalar_t__ length; int data; } ;
typedef TYPE_1__ heim_integer ;


 int memcmp (int ,int ,int) ;

int
der_heim_integer_cmp(const heim_integer *p,
       const heim_integer *q)
{
    if (p->negative != q->negative)
 return q->negative - p->negative;
    if (p->length != q->length)
 return p->length - q->length;
    return memcmp(p->data, q->data, p->length);
}
