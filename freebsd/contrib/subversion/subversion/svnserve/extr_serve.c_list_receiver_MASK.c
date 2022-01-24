#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_dirent_t ;
struct TYPE_2__ {int /*<<< orphan*/  dirent_fields; int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ list_receiver_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC2(const char *path,
              svn_dirent_t *dirent,
              void *baton,
              apr_pool_t *pool)
{
  list_receiver_baton_t *b = baton;
  return FUNC0(FUNC1(b->conn, pool, path, dirent,
                                                  b->dirent_fields));
}