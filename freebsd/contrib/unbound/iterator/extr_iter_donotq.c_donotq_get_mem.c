
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_donotq {int region; } ;


 size_t regional_get_mem (int ) ;

size_t
donotq_get_mem(struct iter_donotq* donotq)
{
 if(!donotq) return 0;
 return sizeof(*donotq) + regional_get_mem(donotq->region);
}
