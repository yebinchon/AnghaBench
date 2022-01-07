
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct val_neg_data {TYPE_2__* prev; TYPE_1__* next; } ;
struct val_neg_cache {TYPE_2__* last; TYPE_1__* first; } ;
struct TYPE_4__ {TYPE_1__* next; } ;
struct TYPE_3__ {TYPE_2__* prev; } ;



__attribute__((used)) static void neg_lru_remove(struct val_neg_cache* neg,
 struct val_neg_data* data)
{
 if(data->prev)
  data->prev->next = data->next;
 else neg->first = data->next;
 if(data->next)
  data->next->prev = data->prev;
 else neg->last = data->prev;
}
