#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_mergeinfo_inheritance_t ;
struct TYPE_3__ {int rev; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int64_t ;

/* Variables and functions */
 char const* FUNC0 (int,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_mergeinfo_nearest_ancestor ; 

__attribute__((used)) static const char *
FUNC1(const char *path,
                    svn_fs_root_t *rev_root,
                    svn_mergeinfo_inheritance_t inherit,
                    svn_boolean_t adjust_inherited_mergeinfo,
                    apr_pool_t *pool)
{
  apr_int64_t number = rev_root->rev;
  number = number * 4
         + (inherit == svn_mergeinfo_nearest_ancestor ? 2 : 0)
         + (adjust_inherited_mergeinfo ? 1 : 0);

  return FUNC0(number, path, pool);
}