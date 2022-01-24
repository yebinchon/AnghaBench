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
 char* FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void
FUNC1(const char **target_marker,
                      const char **left_marker,
                      const char **right_marker,
                      const char *target_label,
                      const char *left_label,
                      const char *right_label,
                      apr_pool_t *pool)
{
  /* Labels fall back to sensible defaults if not specified. */
  if (target_label)
    *target_marker = FUNC0(pool, "<<<<<<< %s", target_label);
  else
    *target_marker = "<<<<<<< .working";

  if (left_label)
    *left_marker = FUNC0(pool, "||||||| %s", left_label);
  else
    *left_marker = "||||||| .old";

  if (right_label)
    *right_marker = FUNC0(pool, ">>>>>>> %s", right_label);
  else
    *right_marker = ">>>>>>> .new";
}