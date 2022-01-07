
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_neg_data {struct val_neg_data* prev; struct val_neg_data* next; } ;
struct val_neg_cache {struct val_neg_data* first; struct val_neg_data* last; } ;



__attribute__((used)) static void neg_lru_front(struct val_neg_cache* neg,
 struct val_neg_data* data)
{
 data->prev = ((void*)0);
 data->next = neg->first;
 if(!neg->first)
  neg->last = data;
 else neg->first->prev = data;
 neg->first = data;
}
