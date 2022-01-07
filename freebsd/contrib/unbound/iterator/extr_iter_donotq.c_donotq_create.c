
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_donotq {int region; } ;


 scalar_t__ calloc (int,int) ;
 int donotq_delete (struct iter_donotq*) ;
 int regional_create () ;

struct iter_donotq*
donotq_create(void)
{
 struct iter_donotq* dq = (struct iter_donotq*)calloc(1,
  sizeof(struct iter_donotq));
 if(!dq)
  return ((void*)0);
 dq->region = regional_create();
 if(!dq->region) {
  donotq_delete(dq);
  return ((void*)0);
 }
 return dq;
}
