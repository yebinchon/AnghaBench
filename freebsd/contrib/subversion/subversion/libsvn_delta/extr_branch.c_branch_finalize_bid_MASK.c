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
 char const* FUNC0 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC2(const char *bid,
                    int mapping_offset,
                    apr_pool_t *result_pool)
{
  const char *outer_bid;
  int outer_eid;

  FUNC1(&outer_bid, &outer_eid, bid, result_pool);

  if (outer_bid)
    {
      outer_bid = FUNC2(outer_bid, mapping_offset, result_pool);
    }

  if (outer_eid < -1)
    {
      outer_eid = mapping_offset - outer_eid;
    }

  return FUNC0(outer_bid, outer_eid, result_pool);
}