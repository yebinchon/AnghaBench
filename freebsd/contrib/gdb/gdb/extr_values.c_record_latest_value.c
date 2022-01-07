
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_history_chunk {struct value** values; struct value_history_chunk* next; } ;
struct value {scalar_t__ modifiable; } ;


 int VALUE_HISTORY_CHUNK ;
 scalar_t__ VALUE_LAZY (struct value*) ;
 int memset (struct value**,int ,int) ;
 int release_value (struct value*) ;
 int value_fetch_lazy (struct value*) ;
 struct value_history_chunk* value_history_chain ;
 int value_history_count ;
 scalar_t__ xmalloc (int) ;

int
record_latest_value (struct value *val)
{
  int i;





  if (VALUE_LAZY (val))
    value_fetch_lazy (val);



  val->modifiable = 0;
  release_value (val);




  i = value_history_count % VALUE_HISTORY_CHUNK;
  if (i == 0)
    {
      struct value_history_chunk *new
      = (struct value_history_chunk *)
      xmalloc (sizeof (struct value_history_chunk));
      memset (new->values, 0, sizeof new->values);
      new->next = value_history_chain;
      value_history_chain = new;
    }

  value_history_chain->values[i] = val;




  return ++value_history_count;
}
