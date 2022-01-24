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
struct TYPE_9__ {int format; int /*<<< orphan*/  flush_to_disk; int /*<<< orphan*/  max_files_per_dir; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
struct TYPE_10__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SVN_FS_X__FORMAT_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

svn_error_t *
FUNC9(svn_fs_t *fs,
                       svn_boolean_t overwrite,
                       apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *sb;
  const char *path = FUNC3(fs, scratch_pool);
  svn_fs_x__data_t *ffd = fs->fsap_data;

  FUNC1(1 <= ffd->format && ffd->format <= SVN_FS_X__FORMAT_NUMBER);

  sb = FUNC8(scratch_pool, "%d\n", ffd->format);
  FUNC7(sb, FUNC2(scratch_pool,
                                            "layout sharded %d\n",
                                            ffd->max_files_per_dir));

  /* svn_io_write_version_file() does a load of magic to allow it to
     replace version files that already exist.  We only need to do
     that when we're allowed to overwrite an existing file. */
  if (! overwrite)
    {
      /* Create the file */
      FUNC0(FUNC4(path, sb->data, scratch_pool));
    }
  else
    {
      FUNC0(FUNC6(path, sb->data, sb->len,
                                   NULL /* copy_perms_path */,
                                   ffd->flush_to_disk, scratch_pool));
    }

  /* And set the perms to make it read only */
  return FUNC5(path, FALSE, scratch_pool);
}