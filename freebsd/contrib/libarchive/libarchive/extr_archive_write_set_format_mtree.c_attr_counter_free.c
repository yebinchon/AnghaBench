
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_counter {struct attr_counter* next; } ;


 int free (struct attr_counter*) ;

__attribute__((used)) static void
attr_counter_free(struct attr_counter **top)
{
 struct attr_counter *ac, *tac;

 if (*top == ((void*)0))
  return;
 ac = *top;
        while (ac != ((void*)0)) {
  tac = ac->next;
  free(ac);
  ac = tac;
 }
 *top = ((void*)0);
}
