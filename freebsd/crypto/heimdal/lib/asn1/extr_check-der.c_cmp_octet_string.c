
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; int data; } ;
typedef TYPE_1__ heim_octet_string ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static int
cmp_octet_string (void *a, void *b)
{
    heim_octet_string *oa = (heim_octet_string *)a;
    heim_octet_string *ob = (heim_octet_string *)b;

    if (oa->length != ob->length)
 return ob->length - oa->length;

    return (memcmp (oa->data, ob->data, oa->length));
}
