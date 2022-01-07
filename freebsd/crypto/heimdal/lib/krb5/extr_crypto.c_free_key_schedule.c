
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _krb5_key_data {TYPE_2__* schedule; } ;
struct _krb5_encryption_type {TYPE_1__* keytype; } ;
typedef int krb5_context ;
struct TYPE_4__ {int length; int data; } ;
struct TYPE_3__ {int (* cleanup ) (int ,struct _krb5_key_data*) ;} ;


 int krb5_free_data (int ,TYPE_2__*) ;
 int memset (int ,int ,int ) ;
 int stub1 (int ,struct _krb5_key_data*) ;

__attribute__((used)) static void
free_key_schedule(krb5_context context,
    struct _krb5_key_data *key,
    struct _krb5_encryption_type *et)
{
    if (et->keytype->cleanup)
 (*et->keytype->cleanup)(context, key);
    memset(key->schedule->data, 0, key->schedule->length);
    krb5_free_data(context, key->schedule);
}
