
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_krbhst_data {int hosts; int * index; } ;
typedef int krb5_boolean ;



__attribute__((used)) static krb5_boolean
krbhst_empty(const struct krb5_krbhst_data *kd)
{
    return kd->index == &kd->hosts;
}
