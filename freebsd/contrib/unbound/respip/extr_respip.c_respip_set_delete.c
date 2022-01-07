
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct respip_set {int region; } ;


 int free (struct respip_set*) ;
 int regional_destroy (int ) ;

void
respip_set_delete(struct respip_set* set)
{
 if(!set)
  return;
 regional_destroy(set->region);
 free(set);
}
