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
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC3(const char *url,
             apr_pool_t *pool)
{
  url = FUNC1(url, pool);
  url = FUNC0(url, pool);
  return FUNC2(url, pool);
}