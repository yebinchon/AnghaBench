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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {scalar_t__ flush_to_disk; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_HASH_TERMINATOR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char **final_path,
                         const char **tmp_path,
                         svn_fs_t *fs,
                         svn_revnum_t rev,
                         apr_hash_t *proplist,
                         apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  apr_file_t *file;
  svn_stream_t *stream;
  *final_path = FUNC2(fs, rev, pool);

  /* ### do we have a directory sitting around already? we really shouldn't
     ### have to get the dirname here. */
  FUNC0(FUNC6(&file, tmp_path,
                                   FUNC1(*final_path, pool),
                                   svn_io_file_del_none, pool, pool));
  stream = FUNC8(file, TRUE, pool);
  FUNC0(FUNC3(proplist, stream, SVN_HASH_TERMINATOR, pool));
  FUNC0(FUNC7(stream));

  /* Flush temporary file to disk and close it. */
  if (ffd->flush_to_disk)
    FUNC0(FUNC5(file, pool));
  FUNC0(FUNC4(file, pool));

  return SVN_NO_ERROR;
}