
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * data; scalar_t__ length; } ;
struct TYPE_6__ {TYPE_1__ keyvalue; } ;
struct TYPE_7__ {TYPE_2__ key; int * salt; int * mkvno; } ;
typedef TYPE_3__ Key ;



void
_kadm5_init_keys (Key *keys, int len)
{
    int i;

    for (i = 0; i < len; ++i) {
 keys[i].mkvno = ((void*)0);
 keys[i].salt = ((void*)0);
 keys[i].key.keyvalue.length = 0;
 keys[i].key.keyvalue.data = ((void*)0);
    }
}
