
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ KeyAccT ;


 int free (TYPE_1__*) ;

KeyAccT*
keyacc_pop_free(
 KeyAccT *head
 )
{
 KeyAccT * next = ((void*)0);
 if (head) {
  next = head->next;
  free(head);
 }
 return next;
}
