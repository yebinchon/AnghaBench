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
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct TYPE_3__ {int /*<<< orphan*/  sha1_checksum; int /*<<< orphan*/  md5_checksum; } ;
typedef  TYPE_1__ representation_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_checksum_t **md5_checksum,
                                    svn_checksum_t **sha1_checksum,
                                    svn_fs_t *fs,
                                    const char *rep_key,
                                    trail_t *trail,
                                    apr_pool_t *pool)
{
  representation_t *rep;

  FUNC0(FUNC2(&rep, fs, rep_key, trail, pool));
  if (md5_checksum)
    *md5_checksum = FUNC1(rep->md5_checksum, pool);
  if (sha1_checksum)
    *sha1_checksum = FUNC1(rep->sha1_checksum, pool);

  return SVN_NO_ERROR;
}