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
typedef  int /*<<< orphan*/  svn_info_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_info2_t ;
struct info_to_relpath_baton {int /*<<< orphan*/  info_baton; int /*<<< orphan*/  (* info_receiver ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  anchor_abspath; scalar_t__ anchor_relpath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton,
                              const char *abspath_or_url,
                              const svn_client_info2_t *info2,
                              apr_pool_t *scratch_pool)
{
  struct info_to_relpath_baton *rb = baton;
  const char *path = abspath_or_url;
  svn_info_t *info;

  if (rb->anchor_relpath &&
      FUNC3(rb->anchor_abspath, abspath_or_url))
    {
      path = FUNC4(rb->anchor_relpath,
                             FUNC5(rb->anchor_abspath,
                                                      abspath_or_url),
                             scratch_pool);
    }

  FUNC0(FUNC1(&info, rb->wc_ctx, info2, scratch_pool));

  FUNC0(rb->info_receiver(rb->info_baton,
                            path,
                            info,
                            scratch_pool));

  return SVN_NO_ERROR;
}