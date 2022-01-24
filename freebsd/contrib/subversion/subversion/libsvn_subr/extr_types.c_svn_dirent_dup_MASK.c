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
struct TYPE_5__ {int /*<<< orphan*/  last_author; } ;
typedef  TYPE_1__ svn_dirent_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_dirent_t *
FUNC2(const svn_dirent_t *dirent,
               apr_pool_t *pool)
{
  svn_dirent_t *new_dirent = FUNC0(pool, sizeof(*new_dirent));

  *new_dirent = *dirent;

  new_dirent->last_author = FUNC1(pool, dirent->last_author);

  return new_dirent;
}