#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_uuid_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_uuid ) (TYPE_2__*,char const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_BAD_UUID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_fs_t *fs, const char *uuid, apr_pool_t *pool)
{
  if (! uuid)
    {
      uuid = FUNC5(pool);
    }
  else
    {
      apr_uuid_t parsed_uuid;
      apr_status_t apr_err = FUNC1(&parsed_uuid, uuid);
      if (apr_err)
        return FUNC3(SVN_ERR_BAD_UUID, NULL,
                                 FUNC0("Malformed UUID '%s'"), uuid);
    }
  return FUNC4(fs->vtable->set_uuid(fs, uuid, pool));
}