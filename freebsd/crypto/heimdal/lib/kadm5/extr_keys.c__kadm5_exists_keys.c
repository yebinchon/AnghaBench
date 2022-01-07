
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ length; int data; } ;
struct TYPE_11__ {scalar_t__ keytype; TYPE_3__ keyvalue; } ;
struct TYPE_12__ {TYPE_4__ key; TYPE_2__* salt; } ;
struct TYPE_8__ {scalar_t__ length; int data; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ salt; } ;
typedef TYPE_5__ Key ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int
_kadm5_exists_keys(Key *keys1, int len1, Key *keys2, int len2)
{
    int i, j;

    for (i = 0; i < len1; ++i) {
 for (j = 0; j < len2; j++) {
     if ((keys1[i].salt != ((void*)0) && keys2[j].salt == ((void*)0))
  || (keys1[i].salt == ((void*)0) && keys2[j].salt != ((void*)0)))
  continue;

     if (keys1[i].salt != ((void*)0)) {
  if (keys1[i].salt->type != keys2[j].salt->type)
      continue;
  if (keys1[i].salt->salt.length != keys2[j].salt->salt.length)
      continue;
  if (memcmp (keys1[i].salt->salt.data, keys2[j].salt->salt.data,
       keys1[i].salt->salt.length) != 0)
      continue;
     }
     if (keys1[i].key.keytype != keys2[j].key.keytype)
  continue;
     if (keys1[i].key.keyvalue.length != keys2[j].key.keyvalue.length)
  continue;
     if (memcmp (keys1[i].key.keyvalue.data, keys2[j].key.keyvalue.data,
   keys1[i].key.keyvalue.length) != 0)
  continue;

     return 1;
 }
    }
    return 0;
}
