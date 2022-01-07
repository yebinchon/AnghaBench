
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t length; int data; } ;
struct TYPE_7__ {size_t salttype; TYPE_1__ saltvalue; } ;
typedef TYPE_2__ krb5_salt ;
struct TYPE_8__ {int * key_data_contents; scalar_t__* key_data_length; scalar_t__* key_data_type; } ;
typedef TYPE_3__ krb5_key_data ;


 int memcmp (int ,int ,size_t) ;

__attribute__((used)) static int
cmp_salt (const krb5_salt *salt, const krb5_key_data *k)
{
    if (salt->salttype != (size_t)k->key_data_type[1])
 return 1;
    if (salt->saltvalue.length != (size_t)k->key_data_length[1])
 return 1;
    return memcmp (salt->saltvalue.data, k->key_data_contents[1],
     salt->saltvalue.length);
}
