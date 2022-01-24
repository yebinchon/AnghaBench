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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {scalar_t__ format; int /*<<< orphan*/  flush_to_disk; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT ; 
 int SVN_INT64_BUFFER_SIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_fs_t *fs,
                         svn_revnum_t rev,
                         apr_uint64_t next_node_id,
                         apr_uint64_t next_copy_id,
                         apr_pool_t *pool)
{
  char *buf;
  const char *name;
  fs_fs_data_t *ffd = fs->fsap_data;

  /* Now we can just write out this line. */
  if (ffd->format >= SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT)
    {
      buf = FUNC1(pool, "%ld\n", rev);
    }
  else
    {
      char node_id_str[SVN_INT64_BUFFER_SIZE];
      char copy_id_str[SVN_INT64_BUFFER_SIZE];
      FUNC3(node_id_str, next_node_id);
      FUNC3(copy_id_str, next_copy_id);

      buf = FUNC1(pool, "%ld %s %s\n", rev, node_id_str, copy_id_str);
    }

  name = FUNC4(fs, pool);
  FUNC0(FUNC5(name, buf, FUNC2(buf),
                               name /* copy_perms_path */,
                               ffd->flush_to_disk, pool));

  return SVN_NO_ERROR;
}