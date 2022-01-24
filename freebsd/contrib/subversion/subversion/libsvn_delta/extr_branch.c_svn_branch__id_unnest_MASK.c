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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char) ; 

void
FUNC3(const char **outer_bid,
                      int *outer_eid,
                      const char *bid,
                      apr_pool_t *result_pool)
{
  char *last_dot = FUNC2(bid, '.');

  if (last_dot) /* BID looks like "B3.11" or "B3.11.22" etc. */
    {
      *outer_bid = FUNC0(result_pool, bid, last_dot - bid);
      *outer_eid = FUNC1(last_dot + 1);
    }
  else /* looks like "B0" or B22" (with no dot) */
    {
      *outer_bid = NULL;
      *outer_eid = FUNC1(bid + 1);
    }
}