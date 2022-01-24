#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
struct TYPE_7__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_fs_t *fs,
                           const svn_fs_fs__id_part_t *node_id,
                           const svn_fs_id_t *node_rev_id,
                           apr_pool_t *pool)
{
  svn_error_t *err;
  const char *filename = FUNC5(fs, node_id, pool);

  err = FUNC1(fs, filename,
                                  node_id,
                                  FUNC4(node_rev_id, pool),
                                  pool);
  if (err && FUNC0(err->apr_err))
    {
      /* It's just a cache; stop trying if I can't write. */
      FUNC2(err);
      err = NULL;
    }
  return FUNC3(err);
}