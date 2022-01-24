#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct value_history_chunk {struct value** values; struct value_history_chunk* next; } ;
struct value {scalar_t__ modifiable; } ;

/* Variables and functions */
 int VALUE_HISTORY_CHUNK ; 
 scalar_t__ FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct value**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 struct value_history_chunk* value_history_chain ; 
 int value_history_count ; 
 scalar_t__ FUNC4 (int) ; 

int
FUNC5 (struct value *val)
{
  int i;

  /* We don't want this value to have anything to do with the inferior anymore.
     In particular, "set $1 = 50" should not affect the variable from which
     the value was taken, and fast watchpoints should be able to assume that
     a value on the value history never changes.  */
  if (FUNC0 (val))
    FUNC3 (val);
  /* We preserve VALUE_LVAL so that the user can find out where it was fetched
     from.  This is a bit dubious, because then *&$1 does not just return $1
     but the current contents of that location.  c'est la vie...  */
  val->modifiable = 0;
  FUNC2 (val);

  /* Here we treat value_history_count as origin-zero
     and applying to the value being stored now.  */

  i = value_history_count % VALUE_HISTORY_CHUNK;
  if (i == 0)
    {
      struct value_history_chunk *new
      = (struct value_history_chunk *)
      FUNC4 (sizeof (struct value_history_chunk));
      FUNC1 (new->values, 0, sizeof new->values);
      new->next = value_history_chain;
      value_history_chain = new;
    }

  value_history_chain->values[i] = val;

  /* Now we regard value_history_count as origin-one
     and applying to the value just stored.  */

  return ++value_history_count;
}