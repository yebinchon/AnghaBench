
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_4__* hx509_name ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_7__ {TYPE_1__ rdnSequence; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
struct TYPE_9__ {TYPE_3__ der_name; } ;



int
hx509_name_is_null_p(const hx509_name name)
{
    return name->der_name.u.rdnSequence.len == 0;
}
