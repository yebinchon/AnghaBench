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
 char* FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(const char *str, const char *suffix, apr_pool_t *result_pool)
{
  size_t str_len = FUNC2(str);
  size_t suffix_len = FUNC2(suffix);

  if (str_len > suffix_len
      && FUNC1(str + str_len - suffix_len, suffix) == 0)
    {
      return FUNC0(result_pool, str, str_len - suffix_len);
    }

  return NULL;
}