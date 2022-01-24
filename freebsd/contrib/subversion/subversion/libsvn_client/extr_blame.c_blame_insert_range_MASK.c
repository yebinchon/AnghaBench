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
struct rev {int dummy; } ;
struct blame_chain {struct blame* blame; } ;
struct blame {scalar_t__ start; struct blame* next; struct rev const* rev; } ;
typedef  scalar_t__ apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct blame*,scalar_t__) ; 
 struct blame* FUNC1 (struct blame_chain*,struct rev const*,scalar_t__) ; 
 struct blame* FUNC2 (struct blame*,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC3(struct blame_chain *chain,
                   const struct rev *rev,
                   apr_off_t start,
                   apr_off_t length)
{
  struct blame *head = chain->blame;
  struct blame *point = FUNC2(head, start);
  struct blame *insert;

  if (point->start == start)
    {
      insert = FUNC1(chain, point->rev, point->start + length);
      point->rev = rev;
      insert->next = point->next;
      point->next = insert;
    }
  else
    {
      struct blame *middle;
      middle = FUNC1(chain, rev, start);
      insert = FUNC1(chain, point->rev, start + length);
      middle->next = insert;
      insert->next = point->next;
      point->next = middle;
    }
  FUNC0(insert->next, length);

  return SVN_NO_ERROR;
}