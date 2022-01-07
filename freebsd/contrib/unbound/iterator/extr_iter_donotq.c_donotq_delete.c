
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_donotq {int region; } ;


 int free (struct iter_donotq*) ;
 int regional_destroy (int ) ;

void
donotq_delete(struct iter_donotq* dq)
{
 if(!dq)
  return;
 regional_destroy(dq->region);
 free(dq);
}
