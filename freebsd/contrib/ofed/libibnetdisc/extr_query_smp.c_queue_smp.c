
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* smp_queue_tail; TYPE_2__* smp_queue_head; } ;
typedef TYPE_1__ smp_engine_t ;
struct TYPE_6__ {struct TYPE_6__* qnext; } ;
typedef TYPE_2__ ibnd_smp_t ;



__attribute__((used)) static void queue_smp(smp_engine_t * engine, ibnd_smp_t * smp)
{
 smp->qnext = ((void*)0);
 if (!engine->smp_queue_head) {
  engine->smp_queue_head = smp;
  engine->smp_queue_tail = smp;
 } else {
  engine->smp_queue_tail->qnext = smp;
  engine->smp_queue_tail = smp;
 }
}
