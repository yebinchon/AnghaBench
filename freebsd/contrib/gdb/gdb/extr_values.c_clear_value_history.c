
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_history_chunk {struct value_history_chunk* next; struct value_history_chunk** values; } ;
struct value {struct value* next; struct value** values; } ;


 int VALUE_HISTORY_CHUNK ;
 struct value_history_chunk* value_history_chain ;
 scalar_t__ value_history_count ;
 int xfree (struct value_history_chunk*) ;

void
clear_value_history (void)
{
  struct value_history_chunk *next;
  int i;
  struct value *val;

  while (value_history_chain)
    {
      for (i = 0; i < VALUE_HISTORY_CHUNK; i++)
 if ((val = value_history_chain->values[i]) != ((void*)0))
   xfree (val);
      next = value_history_chain->next;
      xfree (value_history_chain);
      value_history_chain = next;
    }
  value_history_count = 0;
}
