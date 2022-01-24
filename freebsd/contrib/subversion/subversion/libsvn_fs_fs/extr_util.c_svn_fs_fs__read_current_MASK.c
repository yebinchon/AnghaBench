#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_8__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {scalar_t__ format; } ;
typedef  TYPE_3__ fs_fs_data_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 scalar_t__ SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const**,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 

svn_error_t *
FUNC7(svn_revnum_t *rev,
                        apr_uint64_t *next_node_id,
                        apr_uint64_t *next_copy_id,
                        svn_fs_t *fs,
                        apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_stringbuf_t *content;

  FUNC0(FUNC5(&content,
                                  FUNC4(fs, pool),
                                  pool));

  if (ffd->format >= SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT)
    {
      /* When format 1 and 2 filesystems are upgraded, the 'current' file is
         left intact.  As a consequence, there is a window when a filesystem
         has a new format, but this file still contains the IDs left from an
         old format, i.e. looks like "359 j5 v\n".  Do not be too strict here
         and only expect a parseable revision number. */
      FUNC0(FUNC6(rev, content->data, NULL));

      *next_node_id = 0;
      *next_copy_id = 0;
    }
  else
    {
      const char *str;

      FUNC0(FUNC6(rev, content->data, &str));
      if (*str != ' ')
        return FUNC3(SVN_ERR_FS_CORRUPT, NULL,
                                FUNC1("Corrupt 'current' file"));

      *next_node_id = FUNC2(&str, str + 1);
      if (*str != ' ')
        return FUNC3(SVN_ERR_FS_CORRUPT, NULL,
                                FUNC1("Corrupt 'current' file"));

      *next_copy_id = FUNC2(&str, str + 1);
      if (*str != '\n')
        return FUNC3(SVN_ERR_FS_CORRUPT, NULL,
                                FUNC1("Corrupt 'current' file"));
    }

  return SVN_NO_ERROR;
}