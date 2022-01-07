
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ length; int data; } ;
struct TYPE_6__ {scalar_t__ keytype; TYPE_1__ keyvalue; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef int krb5_boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static krb5_boolean
compare_keyblock(const krb5_keyblock *a, const krb5_keyblock *b)
{
    if(a->keytype != b->keytype ||
       a->keyvalue.length != b->keyvalue.length ||
       memcmp(a->keyvalue.data, b->keyvalue.data, a->keyvalue.length) != 0)
 return FALSE;
    return TRUE;
}
