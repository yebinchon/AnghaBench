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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct ev2_file_baton {TYPE_1__* eb; int /*<<< orphan*/  delta_base; int /*<<< orphan*/  base_revision; int /*<<< orphan*/  path; } ;
struct ev2_dir_baton {int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  copyfrom_relpath; TYPE_1__* eb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  fetch_base_baton; int /*<<< orphan*/  (* fetch_base_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct ev2_file_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char *path,
              void *parent_baton,
              svn_revnum_t base_revision,
              apr_pool_t *result_pool,
              void **file_baton)
{
  /* ### fix this?  */
  apr_pool_t *scratch_pool = result_pool;
  struct ev2_file_baton *fb = FUNC1(result_pool, sizeof(*fb));
  struct ev2_dir_baton *pb = parent_baton;
  const char *relpath = FUNC3(pb->eb, path, scratch_pool);

  fb->eb = pb->eb;
  fb->path = FUNC2(result_pool, relpath);
  fb->base_revision = base_revision;

  if (pb->copyfrom_relpath)
    {
      /* We're in a copied directory, so the delta base is going to be
         based up on the copy source. */
      const char *name = FUNC6(relpath, scratch_pool);
      const char *copyfrom_relpath = FUNC7(pb->copyfrom_relpath,
                                                      name,
                                                      scratch_pool);

      FUNC0(fb->eb->fetch_base_func(&fb->delta_base,
                                      fb->eb->fetch_base_baton,
                                      copyfrom_relpath, pb->copyfrom_rev,
                                      result_pool, scratch_pool));
    }
  else
    {
      FUNC0(fb->eb->fetch_base_func(&fb->delta_base,
                                      fb->eb->fetch_base_baton,
                                      relpath, base_revision,
                                      result_pool, scratch_pool));
    }

  *file_baton = fb;
  return SVN_NO_ERROR;
}