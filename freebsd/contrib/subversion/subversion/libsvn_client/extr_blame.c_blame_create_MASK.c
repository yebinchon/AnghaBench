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
struct rev {int dummy; } ;
struct blame_chain {int /*<<< orphan*/  pool; struct blame* avail; } ;
struct blame {struct blame* next; int /*<<< orphan*/  start; struct rev const* rev; } ;
typedef  int /*<<< orphan*/  apr_off_t ;

/* Variables and functions */
 struct blame* FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct blame *
FUNC1(struct blame_chain *chain,
             const struct rev *rev,
             apr_off_t start)
{
  struct blame *blame;
  if (chain->avail)
    {
      blame = chain->avail;
      chain->avail = blame->next;
    }
  else
    blame = FUNC0(chain->pool, sizeof(*blame));
  blame->rev = rev;
  blame->start = start;
  blame->next = NULL;
  return blame;
}