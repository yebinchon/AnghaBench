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
typedef  int /*<<< orphan*/  svn_error_t ;
struct blame_chain {int /*<<< orphan*/  blame; } ;
struct blame {scalar_t__ start; struct blame* next; } ;
typedef  scalar_t__ apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct blame*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_chain*,struct blame*) ; 
 struct blame* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC3(struct blame_chain *chain,
                   apr_off_t start,
                   apr_off_t length)
{
  struct blame *first = FUNC2(chain->blame, start);
  struct blame *last = FUNC2(chain->blame, start + length);
  struct blame *tail = last->next;

  if (first != last)
    {
      struct blame *walk = first->next;
      while (walk != last)
        {
          struct blame *next = walk->next;
          FUNC1(chain, walk);
          walk = next;
        }
      first->next = last;
      last->start = start;
      if (first->start == start)
        {
          *first = *last;
          FUNC1(chain, last);
          last = first;
        }
    }

  if (tail && tail->start == last->start + length)
    {
      *last = *tail;
      FUNC1(chain, tail);
      tail = last->next;
    }

  FUNC0(tail, -length);

  return SVN_NO_ERROR;
}