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
struct TYPE_5__ {void* instance_id; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_6__ {int /*<<< orphan*/  pool; void* uuid; TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_READ ; 
 int /*<<< orphan*/  APR_UUID_FORMATTED_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_fs_t *fs,
          apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  apr_file_t *uuid_file;
  char buf[APR_UUID_FORMATTED_LENGTH + 2];
  apr_size_t limit;

  /* Read the repository uuid. */
  FUNC0(FUNC4(&uuid_file, FUNC2(fs, scratch_pool),
                           APR_READ | APR_BUFFERED, APR_OS_DEFAULT,
                           scratch_pool));

  limit = sizeof(buf);
  FUNC0(FUNC5(uuid_file, buf, &limit, scratch_pool));
  fs->uuid = FUNC1(fs->pool, buf);

  /* Read the instance ID. */
  limit = sizeof(buf);
  FUNC0(FUNC5(uuid_file, buf, &limit,
                                  scratch_pool));
  ffd->instance_id = FUNC1(fs->pool, buf);

  FUNC0(FUNC3(uuid_file, scratch_pool));

  return SVN_NO_ERROR;
}