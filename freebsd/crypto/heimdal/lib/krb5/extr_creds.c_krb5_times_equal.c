
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ starttime; scalar_t__ authtime; scalar_t__ endtime; scalar_t__ renew_till; } ;
typedef TYPE_1__ krb5_times ;
typedef int krb5_boolean ;



__attribute__((used)) static krb5_boolean
krb5_times_equal(const krb5_times *a, const krb5_times *b)
{
    return a->starttime == b->starttime &&
 a->authtime == b->authtime &&
 a->endtime == b->endtime &&
 a->renew_till == b->renew_till;
}
