
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct heim_octet_string {scalar_t__ length; int data; } ;


 int memcmp (int ,int ,scalar_t__) ;

int
_heim_der_set_sort(const void *a1, const void *a2)
{
    const struct heim_octet_string *s1 = a1, *s2 = a2;
    int ret;

    ret = memcmp(s1->data, s2->data,
   s1->length < s2->length ? s1->length : s2->length);
    if(ret)
 return ret;
    return s1->length - s2->length;
}
