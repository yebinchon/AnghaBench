#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_9__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_10__ {int format; int /*<<< orphan*/  flush_to_disk; scalar_t__ use_log_addressing; scalar_t__ max_files_per_dir; } ;
typedef  TYPE_3__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SVN_FS_FS__FORMAT_NUMBER ; 
 int SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT ; 
 int SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 char* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

svn_error_t *
FUNC9(svn_fs_t *fs,
                        svn_boolean_t overwrite,
                        apr_pool_t *pool)
{
  svn_stringbuf_t *sb;
  fs_fs_data_t *ffd = fs->fsap_data;
  const char *path = FUNC3(fs, pool);

  FUNC1(1 <= ffd->format
                 && ffd->format <= SVN_FS_FS__FORMAT_NUMBER);

  sb = FUNC8(pool, "%d\n", ffd->format);

  if (ffd->format >= SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT)
    {
      if (ffd->max_files_per_dir)
        FUNC7(sb, FUNC2(pool, "layout sharded %d\n",
                                                  ffd->max_files_per_dir));
      else
        FUNC7(sb, "layout linear\n");
    }

  if (ffd->format >= SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT)
    {
      if (ffd->use_log_addressing)
        FUNC7(sb, "addressing logical\n");
      else
        FUNC7(sb, "addressing physical\n");
    }

  /* svn_io_write_version_file() does a load of magic to allow it to
     replace version files that already exist.  We only need to do
     that when we're allowed to overwrite an existing file. */
  if (! overwrite)
    {
      /* Create the file */
      FUNC0(FUNC4(path, sb->data, pool));
    }
  else
    {
      FUNC0(FUNC6(path, sb->data, sb->len,
                                   NULL /* copy_perms_path */,
                                   ffd->flush_to_disk, pool));
    }

  /* And set the perms to make it read only */
  return FUNC5(path, FALSE, pool);
}