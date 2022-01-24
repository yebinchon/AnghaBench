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
struct TYPE_5__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  uuid; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct get_uuid_args {int idx; char const** uuid; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,struct get_uuid_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_get_uuid ; 

svn_error_t *
FUNC4(svn_fs_t *fs,
                           apr_pool_t *scratch_pool)
{

  FUNC0(FUNC2(fs, TRUE));

  /* We hit the database. */
    {
      const char *uuid;
      struct get_uuid_args args;

      args.idx = 1;
      args.uuid = &uuid;
      FUNC0(FUNC3(fs, txn_body_get_uuid, &args,
                                     FALSE, scratch_pool));

      if (uuid)
        {
          /* Toss what we find into the cache. */
          fs->uuid = FUNC1(fs->pool, uuid);
        }
    }

  return SVN_NO_ERROR;
}