
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; int name; } ;
typedef TYPE_1__ pcap_if_t ;


 TYPE_1__* acn_if_list ;
 scalar_t__ if_sort (int ,int ) ;

__attribute__((used)) static void sort_if_table(void) {
 pcap_if_t *p1, *p2, *prev, *temp;
 int has_swapped;

 if (!acn_if_list) return;

 while (1) {
  p1 = acn_if_list;
  prev = 0;
  has_swapped = 0;
  while ((p2 = p1->next)) {
   if (if_sort(p1->name, p2->name) > 0) {
    if (prev) {
     temp = p2->next;
     prev->next = p2;
     p2->next = p1;
     p1->next = temp;
    } else {
     temp = p2->next;
     acn_if_list= p2;
     p2->next = p1;
     p1->next = temp;
    }
    p1 = p2;
    prev = p1;
    has_swapped = 1;
   }
   prev = p1;
   p1 = p1->next;
  }
  if (has_swapped == 0)
   return;
 }
 return;
}
