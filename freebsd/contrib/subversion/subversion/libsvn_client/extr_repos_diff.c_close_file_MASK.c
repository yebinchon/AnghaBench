#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct file_baton {int /*<<< orphan*/ * pool; int /*<<< orphan*/  pfb; int /*<<< orphan*/  propchanges; int /*<<< orphan*/ * path_end_revision; scalar_t__ pristine_props; int /*<<< orphan*/ * path_start_revision; int /*<<< orphan*/  right_source; int /*<<< orphan*/  left_source; int /*<<< orphan*/  path; scalar_t__ added; scalar_t__ has_propchange; int /*<<< orphan*/  result_md5_checksum; scalar_t__ skip; struct edit_baton* edit_baton; struct dir_baton* parent_baton; } ;
struct edit_baton {TYPE_1__* processor; scalar_t__ text_deltas; } ;
struct dir_baton {int dummy; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* file_changed ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* file_added ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct file_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dir_baton*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(void *file_baton,
           const char *expected_md5_digest,
           apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct dir_baton *pb = fb->parent_baton;
  struct edit_baton *eb = fb->edit_baton;
  apr_pool_t *scratch_pool;

  /* Skip *everything* within a newly tree-conflicted directory. */
  if (fb->skip)
    {
      FUNC11(fb->pool);
      FUNC0(FUNC3(pb));
      return SVN_NO_ERROR;
    }

  scratch_pool = fb->pool;

  if (expected_md5_digest && eb->text_deltas)
    {
      svn_checksum_t *expected_md5_checksum;

      FUNC0(FUNC9(&expected_md5_checksum, svn_checksum_md5,
                                     expected_md5_digest, scratch_pool));

      if (!FUNC7(expected_md5_checksum, fb->result_md5_checksum))
        return FUNC10(FUNC8(
                                      expected_md5_checksum,
                                      fb->result_md5_checksum,
                                      pool,
                                      FUNC1("Checksum mismatch for '%s'"),
                                      fb->path));
    }

  if (fb->added || fb->path_end_revision || fb->has_propchange)
    {
      apr_hash_t *right_props;

      if (!fb->added && !fb->pristine_props)
        {
          /* We didn't receive a text change, so we have no pristine props.
             Retrieve just the props now. */
          FUNC0(FUNC2(fb, TRUE, scratch_pool));
        }

      if (fb->pristine_props)
        FUNC4(fb->pristine_props, fb->propchanges);

      right_props = FUNC12(fb->pristine_props, fb->propchanges,
                                    fb->pool);

      if (fb->added)
        FUNC0(eb->processor->file_added(fb->path,
                                          NULL /* copyfrom_src */,
                                          fb->right_source,
                                          NULL /* copyfrom_file */,
                                          fb->path_end_revision,
                                          NULL /* copyfrom_props */,
                                          right_props,
                                          fb->pfb,
                                          eb->processor,
                                          fb->pool));
      else
        FUNC0(eb->processor->file_changed(fb->path,
                                            fb->left_source,
                                            fb->right_source,
                                            fb->path_end_revision
                                                    ? fb->path_start_revision
                                                    : NULL,
                                            fb->path_end_revision,
                                            fb->pristine_props,
                                            right_props,
                                            (fb->path_end_revision != NULL),
                                            fb->propchanges,
                                            fb->pfb,
                                            eb->processor,
                                            fb->pool));
    }

  FUNC11(fb->pool); /* Destroy file and scratch pool */

  FUNC0(FUNC3(pb));

  return SVN_NO_ERROR;
}