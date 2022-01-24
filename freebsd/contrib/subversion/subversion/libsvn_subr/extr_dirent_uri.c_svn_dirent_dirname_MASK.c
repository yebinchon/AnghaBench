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
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*,scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 

char *
FUNC6(const char *dirent, apr_pool_t *pool)
{
  apr_size_t len = FUNC4(dirent);

  FUNC1(FUNC5(dirent, pool));

  if (len == FUNC3(dirent, len))
    return FUNC0(pool, dirent, len);
  else
    return FUNC0(pool, dirent, FUNC2(dirent, len));
}