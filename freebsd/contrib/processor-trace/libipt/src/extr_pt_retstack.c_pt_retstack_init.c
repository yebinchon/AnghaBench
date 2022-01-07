
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_retstack {scalar_t__ bottom; scalar_t__ top; } ;



void pt_retstack_init(struct pt_retstack *retstack)
{
 if (!retstack)
  return;

 retstack->top = 0;
 retstack->bottom = 0;
}
