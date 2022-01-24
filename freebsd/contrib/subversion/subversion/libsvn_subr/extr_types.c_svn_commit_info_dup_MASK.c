#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * repos_root; int /*<<< orphan*/ * post_commit_err; int /*<<< orphan*/  revision; int /*<<< orphan*/ * author; int /*<<< orphan*/ * date; } ;
typedef  TYPE_1__ svn_commit_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_commit_info_t *
FUNC2(const svn_commit_info_t *src_commit_info,
                    apr_pool_t *pool)
{
  svn_commit_info_t *dst_commit_info
    = FUNC0(pool, sizeof(*dst_commit_info));

  dst_commit_info->date = src_commit_info->date
    ? FUNC1(pool, src_commit_info->date) : NULL;
  dst_commit_info->author = src_commit_info->author
    ? FUNC1(pool, src_commit_info->author) : NULL;
  dst_commit_info->revision = src_commit_info->revision;
  dst_commit_info->post_commit_err = src_commit_info->post_commit_err
    ? FUNC1(pool, src_commit_info->post_commit_err) : NULL;
  dst_commit_info->repos_root = src_commit_info->repos_root
    ? FUNC1(pool, src_commit_info->repos_root) : NULL;

  return dst_commit_info;
}