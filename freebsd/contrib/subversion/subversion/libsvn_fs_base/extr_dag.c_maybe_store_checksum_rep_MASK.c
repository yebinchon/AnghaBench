#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_ALREADY_EXISTS ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *rep,
                         trail_t *trail,
                         apr_pool_t *pool)
{
  svn_error_t *err = SVN_NO_ERROR;
  svn_fs_t *fs = trail->fs;
  svn_checksum_t *sha1_checksum;

  /* We want the SHA1 checksum, if any. */
  FUNC0(FUNC3(NULL, &sha1_checksum,
                                              fs, rep, trail, pool));
  if (sha1_checksum)
    {
      err = FUNC4(fs, sha1_checksum, rep, trail, pool);
      if (err && (err->apr_err == SVN_ERR_FS_ALREADY_EXISTS))
        {
          FUNC1(err);
          err = SVN_NO_ERROR;
        }
    }
  return FUNC2(err);
}