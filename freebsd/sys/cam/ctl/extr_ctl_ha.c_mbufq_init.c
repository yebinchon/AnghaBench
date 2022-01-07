
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbufq {int * tail; int head; } ;



__attribute__((used)) static void
mbufq_init(struct mbufq *q, int limit)
{

 q->head = q->tail = ((void*)0);
}
