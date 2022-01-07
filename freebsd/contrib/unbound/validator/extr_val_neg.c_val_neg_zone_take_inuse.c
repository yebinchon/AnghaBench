
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_neg_zone {int in_use; int count; struct val_neg_zone* parent; } ;



void val_neg_zone_take_inuse(struct val_neg_zone* zone)
{
 if(!zone->in_use) {
  struct val_neg_zone* p;
  zone->in_use = 1;

  for(p=zone; p; p = p->parent) {
   p->count++;
  }
 }
}
