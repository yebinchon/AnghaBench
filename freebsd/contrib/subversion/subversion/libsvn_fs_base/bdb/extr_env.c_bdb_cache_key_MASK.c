#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  inode; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ bdb_env_key_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {int /*<<< orphan*/  inode; int /*<<< orphan*/  device; } ;
typedef  TYPE_2__ apr_finfo_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_FINFO_DEV ; 
 int APR_FINFO_INODE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  APR_READ ; 
 int /*<<< orphan*/  BDB_CONFIG_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(bdb_env_key_t *keyp, apr_file_t **dbconfig_file,
              const char *path, apr_pool_t *pool)
{
  const char *dbcfg_file_name = FUNC4(path, BDB_CONFIG_FILE, pool);
  apr_file_t *dbcfg_file;
  apr_status_t apr_err;
  apr_finfo_t finfo;

  FUNC0(FUNC6(&dbcfg_file, dbcfg_file_name,
                           APR_READ, APR_OS_DEFAULT, pool));

  apr_err = FUNC2(&finfo, APR_FINFO_DEV | APR_FINFO_INODE,
                              dbcfg_file);
  if (apr_err)
    return FUNC5
      (apr_err, "Can't create BDB environment cache key");

  /* Make sure that any padding in the key is always cleared, so that
     the key's hash deterministic. */
  FUNC3(keyp, 0, sizeof *keyp);
  keyp->device = finfo.device;
  keyp->inode = finfo.inode;

  if (dbconfig_file)
    *dbconfig_file = dbcfg_file;
  else
    FUNC1(dbcfg_file);

  return SVN_NO_ERROR;
}