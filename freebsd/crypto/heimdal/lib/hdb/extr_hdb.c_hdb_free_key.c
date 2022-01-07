
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int length; int data; } ;
struct TYPE_8__ {TYPE_1__ keyvalue; } ;
struct TYPE_9__ {TYPE_2__ key; } ;
typedef TYPE_3__ Key ;


 int free (TYPE_3__*) ;
 int free_Key (TYPE_3__*) ;
 int memset (int ,int ,int ) ;

void
hdb_free_key(Key *key)
{
    memset(key->key.keyvalue.data,
    0,
    key->key.keyvalue.length);
    free_Key(key);
    free(key);
}
