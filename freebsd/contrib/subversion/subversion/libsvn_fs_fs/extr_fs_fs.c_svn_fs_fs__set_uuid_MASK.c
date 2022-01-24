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
struct TYPE_10__ {void* uuid; int /*<<< orphan*/  pool; TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {scalar_t__ format; void* instance_id; int /*<<< orphan*/  flush_to_disk; } ;
typedef  TYPE_3__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_FS__MIN_INSTANCE_ID_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_fs_t *fs,
                    const char *uuid,
                    const char *instance_id,
                    apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  const char *uuid_path = FUNC2(fs, pool);
  svn_stringbuf_t *contents = FUNC6(pool);

  if (! uuid)
    uuid = FUNC7(pool);

  if (! instance_id)
    instance_id = FUNC7(pool);

  FUNC5(contents, uuid);
  FUNC5(contents, "\n");

  if (ffd->format >= SVN_FS_FS__MIN_INSTANCE_ID_FORMAT)
    {
      FUNC5(contents, instance_id);
      FUNC5(contents, "\n");
    }

  /* We use the permissions of the 'current' file, because the 'uuid'
     file does not exist during repository creation. */
  FUNC0(FUNC4(uuid_path, contents->data, contents->len,
                               FUNC3(fs, pool) /* perms */,
                               ffd->flush_to_disk, pool));

  fs->uuid = FUNC1(fs->pool, uuid);

  if (ffd->format >= SVN_FS_FS__MIN_INSTANCE_ID_FORMAT)
    ffd->instance_id = FUNC1(fs->pool, instance_id);
  else
    ffd->instance_id = fs->uuid;

  return SVN_NO_ERROR;
}