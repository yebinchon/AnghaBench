
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_context ;
struct TYPE_5__ {int key; struct TYPE_5__* salt; struct TYPE_5__* mkvno; } ;
typedef TYPE_1__ Key ;


 int free (TYPE_1__*) ;
 int free_Salt (TYPE_1__*) ;
 int krb5_free_keyblock_contents (int ,int *) ;

void
hdb_free_keys (krb5_context context, int len, Key *keys)
{
    int i;

    for (i = 0; i < len; i++) {
 free(keys[i].mkvno);
 keys[i].mkvno = ((void*)0);
 if (keys[i].salt != ((void*)0)) {
     free_Salt(keys[i].salt);
     free(keys[i].salt);
     keys[i].salt = ((void*)0);
 }
 krb5_free_keyblock_contents(context, &keys[i].key);
    }
    free (keys);
}
