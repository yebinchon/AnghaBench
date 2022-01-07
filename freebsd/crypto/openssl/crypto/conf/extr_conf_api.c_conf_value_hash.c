
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int section; } ;
typedef TYPE_1__ CONF_VALUE ;


 int OPENSSL_LH_strhash (int ) ;

__attribute__((used)) static unsigned long conf_value_hash(const CONF_VALUE *v)
{
    return (OPENSSL_LH_strhash(v->section) << 2) ^ OPENSSL_LH_strhash(v->name);
}
