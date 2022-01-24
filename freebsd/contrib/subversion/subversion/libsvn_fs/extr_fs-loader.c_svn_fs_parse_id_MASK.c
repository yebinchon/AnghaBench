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
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/ * (* parse_id ) (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ fs_library_vtable_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_FS_TYPE_BDB ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

svn_fs_id_t *
FUNC3(const char *data, apr_size_t len, apr_pool_t *pool)
{
  fs_library_vtable_t *vtable;
  svn_error_t *err;

  err = FUNC0(&vtable, SVN_FS_TYPE_BDB, pool);
  if (err)
    {
      FUNC2(err);
      return NULL;
    }
  return vtable->parse_id(data, len, pool);
}