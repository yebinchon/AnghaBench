#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct file_baton {int /*<<< orphan*/  pool; int /*<<< orphan*/  pristine_props; int /*<<< orphan*/  base_revision; int /*<<< orphan*/  path; TYPE_1__* edit_baton; int /*<<< orphan*/  start_md5_checksum; int /*<<< orphan*/  path_start_revision; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  ra_session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(struct file_baton *fb,
                 svn_boolean_t props_only,
                 apr_pool_t *scratch_pool)
{
  if (! props_only)
    {
      svn_stream_t *fstream;

      FUNC0(FUNC4(&fstream, &(fb->path_start_revision),
                                     NULL, svn_io_file_del_on_pool_cleanup,
                                     fb->pool, scratch_pool));

      fstream = FUNC2(fstream, NULL, &fb->start_md5_checksum,
                                        svn_checksum_md5, TRUE, fb->pool);

      /* Retrieve the file and its properties */
      FUNC0(FUNC1(fb->edit_baton->ra_session,
                              fb->path,
                              fb->base_revision,
                              fstream, NULL,
                              &(fb->pristine_props),
                              fb->pool));
      FUNC0(FUNC3(fstream));
    }
  else
    {
      FUNC0(FUNC1(fb->edit_baton->ra_session,
                              fb->path,
                              fb->base_revision,
                              NULL, NULL,
                              &(fb->pristine_props),
                              fb->pool));
    }

  return SVN_NO_ERROR;
}