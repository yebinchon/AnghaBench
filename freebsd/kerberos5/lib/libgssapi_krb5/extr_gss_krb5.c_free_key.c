
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; struct TYPE_5__* data; } ;
typedef TYPE_1__ gss_krb5_lucid_key_t ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
free_key(gss_krb5_lucid_key_t *key)
{
    memset(key->data, 0, key->length);
    free(key->data);
    memset(key, 0, sizeof(*key));
}
