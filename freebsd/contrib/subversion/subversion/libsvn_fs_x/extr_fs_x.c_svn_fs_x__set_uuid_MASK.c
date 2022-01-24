#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_10__ {void* instance_id; int /*<<< orphan*/  flush_to_disk; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
struct TYPE_11__ {int /*<<< orphan*/  pool; void* uuid; TYPE_2__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_fs_t *fs,
                   const char *uuid,
                   const char *instance_id,
                   svn_boolean_t overwrite,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  const char *uuid_path = FUNC3(fs, scratch_pool);
  svn_stringbuf_t *contents = FUNC7(scratch_pool);

  if (! uuid)
    uuid = FUNC8(scratch_pool);

  if (! instance_id)
    instance_id = FUNC8(scratch_pool);

  FUNC6(contents, uuid);
  FUNC6(contents, "\n");
  FUNC6(contents, instance_id);
  FUNC6(contents, "\n");

  /* We use the permissions of the 'current' file, because the 'uuid'
     file does not exist during repository creation.

     svn_io_write_atomic2() does a load of magic to allow it to
     replace version files that already exist.  We only need to do
     that when we're allowed to overwrite an existing file. */
  if (! overwrite)
    {
      /* Create the file */
      FUNC0(FUNC4(uuid_path, contents->data, scratch_pool));
    }
  else
    {
      FUNC0(FUNC5(uuid_path, contents->data, contents->len,
                                   /* perms */
                                   FUNC2(fs, scratch_pool),
                                   ffd->flush_to_disk, scratch_pool));
    }

  fs->uuid = FUNC1(fs->pool, uuid);
  ffd->instance_id = FUNC1(fs->pool, instance_id);

  return SVN_NO_ERROR;
}