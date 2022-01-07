
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;
struct key_entry_key {TYPE_1__ entry; } ;
struct key_entry_data {scalar_t__ isbad; } ;



int
key_entry_isbad(struct key_entry_key* kkey)
{
 struct key_entry_data* d = (struct key_entry_data*)kkey->entry.data;
 return (int)(d->isbad);
}
