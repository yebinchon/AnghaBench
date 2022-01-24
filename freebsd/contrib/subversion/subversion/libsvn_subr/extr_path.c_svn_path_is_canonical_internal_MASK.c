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
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_boolean_t
FUNC3(const char *path, apr_pool_t *pool)
{
  return FUNC2(path, pool) ||
      FUNC0(path, pool) ||
      FUNC1(path);
}