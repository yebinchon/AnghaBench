#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct fb_baton {int /*<<< orphan*/  cb_baton; int /*<<< orphan*/  (* provide_base_cb ) (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char **filename,
           void *baton,
           const char *repos_relpath,
           svn_revnum_t base_revision,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  struct fb_baton *fbb = baton;
  svn_revnum_t unused_revision;
  svn_stream_t *contents;
  svn_stream_t *file_stream;
  const char *tmp_filename;

  /* Ignored: BASE_REVISION.  */

  FUNC0(fbb->provide_base_cb(&contents, &unused_revision, fbb->cb_baton,
                               repos_relpath, result_pool, scratch_pool));

  FUNC0(FUNC4(&file_stream, &tmp_filename, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));
  FUNC0(FUNC3(contents, file_stream, NULL, NULL, scratch_pool));

  *filename = FUNC1(result_pool, tmp_filename);



  return SVN_NO_ERROR;
}