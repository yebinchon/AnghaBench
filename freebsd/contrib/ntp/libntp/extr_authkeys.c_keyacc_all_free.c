
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KeyAccT ;


 int * keyacc_pop_free (int *) ;

KeyAccT*
keyacc_all_free(
 KeyAccT * head
 )
{
 while (head)
  head = keyacc_pop_free(head);
 return head;
}
