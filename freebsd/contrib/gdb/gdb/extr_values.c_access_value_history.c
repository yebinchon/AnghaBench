
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_history_chunk {int * values; struct value_history_chunk* next; } ;
struct value {int dummy; } ;


 int VALUE_HISTORY_CHUNK ;
 int error (char*,...) ;
 struct value* value_copy (int ) ;
 struct value_history_chunk* value_history_chain ;
 int value_history_count ;

struct value *
access_value_history (int num)
{
  struct value_history_chunk *chunk;
  int i;
  int absnum = num;

  if (absnum <= 0)
    absnum += value_history_count;

  if (absnum <= 0)
    {
      if (num == 0)
 error ("The history is empty.");
      else if (num == 1)
 error ("There is only one value in the history.");
      else
 error ("History does not go back to $$%d.", -num);
    }
  if (absnum > value_history_count)
    error ("History has not yet reached $%d.", absnum);

  absnum--;



  chunk = value_history_chain;
  for (i = (value_history_count - 1) / VALUE_HISTORY_CHUNK - absnum / VALUE_HISTORY_CHUNK;
       i > 0; i--)
    chunk = chunk->next;

  return value_copy (chunk->values[absnum % VALUE_HISTORY_CHUNK]);
}
