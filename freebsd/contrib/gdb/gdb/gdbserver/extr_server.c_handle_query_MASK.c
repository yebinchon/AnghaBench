#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inferior_list_entry {int id; struct inferior_list_entry* next; } ;
struct TYPE_4__ {struct inferior_list_entry* head; } ;
struct TYPE_3__ {int (* read_auxv ) (int /*<<< orphan*/ ,char*,unsigned int) ;int /*<<< orphan*/  (* look_up_symbols ) () ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  PBUFSIZ ; 
 TYPE_2__ all_threads ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 TYPE_1__* the_target ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10 (char *own_buf)
{
  static struct inferior_list_entry *thread_ptr;

  if (FUNC3 ("qSymbol::", own_buf) == 0)
    {
      if (the_target->look_up_symbols != NULL)
	(*the_target->look_up_symbols) ();

      FUNC4 (own_buf, "OK");
      return;
    }

  if (FUNC3 ("qfThreadInfo", own_buf) == 0)
    {
      thread_ptr = all_threads.head;
      FUNC2 (own_buf, "m%x", thread_ptr->id);
      thread_ptr = thread_ptr->next;
      return;
    }

  if (FUNC3 ("qsThreadInfo", own_buf) == 0)
    {
      if (thread_ptr != NULL)
	{
	  FUNC2 (own_buf, "m%x", thread_ptr->id);
	  thread_ptr = thread_ptr->next;
	  return;
	}
      else
	{
	  FUNC2 (own_buf, "l");
	  return;
	}
    }

  if (the_target->read_auxv != NULL
      && FUNC5 ("qPart:auxv:read::", own_buf, 17) == 0)
    {
      char data[(PBUFSIZ - 1) / 2];
      CORE_ADDR ofs;
      unsigned int len;
      int n;
      FUNC1 (&own_buf[17], &ofs, &len); /* "OFS,LEN" */
      if (len > sizeof data)
	len = sizeof data;
      n = (*the_target->read_auxv) (ofs, data, len);
      if (n == 0)
	FUNC9 (own_buf);
      else if (n < 0)
	FUNC8 (own_buf);
      else
	FUNC0 (data, own_buf, n);
      return;
    }

  /* Otherwise we didn't know what packet it was.  Say we didn't
     understand it.  */
  own_buf[0] = 0;
}