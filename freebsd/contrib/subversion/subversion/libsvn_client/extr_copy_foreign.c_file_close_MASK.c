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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct file_baton_t {int /*<<< orphan*/  pool; int /*<<< orphan*/  properties; int /*<<< orphan*/  local_abspath; int /*<<< orphan*/  digest; struct dir_baton_t* pb; struct edit_baton_t* eb; } ;
struct edit_baton_t {int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  notify_func; int /*<<< orphan*/  wc_ctx; } ;
struct dir_baton_t {int dummy; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dir_baton_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dir_baton_t*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC12(void *file_baton,
           const char *text_checksum,
           apr_pool_t *scratch_pool)
{
  struct file_baton_t *fb = file_baton;
  struct edit_baton_t *eb = fb->eb;
  struct dir_baton_t *pb = fb->pb;

  FUNC0(FUNC2(pb, fb->pool));

  if (text_checksum)
    {
      svn_checksum_t *expected_checksum;
      svn_checksum_t *actual_checksum;

      FUNC0(FUNC7(&expected_checksum, svn_checksum_md5,
                                     text_checksum, fb->pool));
      actual_checksum = FUNC4(fb->digest, fb->pool);

      if (! FUNC5(expected_checksum, actual_checksum))
        return FUNC9(
                    FUNC6(expected_checksum,
                                              actual_checksum,
                                              fb->pool,
                                         FUNC1("Checksum mismatch for '%s'"),
                                              FUNC8(
                                                    fb->local_abspath,
                                                    fb->pool)));
    }

  FUNC0(FUNC11(eb->wc_ctx, fb->local_abspath, fb->properties,
                                TRUE /* skip checks */,
                                eb->notify_func, eb->notify_baton,
                                fb->pool));

  FUNC10(fb->pool);
  FUNC0(FUNC3(pb));

  return SVN_NO_ERROR;
}