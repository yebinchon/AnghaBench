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
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 char const* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,int) ; 

const char *
FUNC5(const char *uri, apr_pool_t *pool)
{
  apr_size_t len = FUNC1(uri);
  apr_size_t start;

  FUNC0(FUNC3(uri, NULL));

  if (FUNC4(uri, len))
    return "";

  start = len;
  while (start > 0 && uri[start - 1] != '/')
    --start;

  return FUNC2(uri + start, pool);
}