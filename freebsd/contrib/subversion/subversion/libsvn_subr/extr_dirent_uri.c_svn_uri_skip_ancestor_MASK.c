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
 char const* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*,char const*) ; 

const char *
FUNC2(const char *parent_uri,
                      const char *child_uri,
                      apr_pool_t *result_pool)
{
  const char *result = FUNC1(parent_uri, child_uri);

  return result ? FUNC0(result, result_pool) : NULL;
}