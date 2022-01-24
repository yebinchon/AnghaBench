#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_9__ {TYPE_2__* repository; } ;
typedef  TYPE_3__ server_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {TYPE_1__* fs_path; int /*<<< orphan*/  fs; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 char* FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_ra_svn_conn_t *conn,
       apr_pool_t *pool,
       svn_ra_svn__list_t *params,
       void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *target, *depth_word;
  svn_boolean_t recurse;
  /* Default to unknown.  Old clients won't send depth, but we'll
     handle that by converting recurse if necessary. */
  svn_depth_t depth = svn_depth_unknown;

  /* Parse the arguments. */
  FUNC2(FUNC10(params, "cb?(?r)?w",
                                  &target, &recurse, &rev, &depth_word));
  target = FUNC11(target, pool);

  if (depth_word)
    depth = FUNC6(depth_word);
  else
    depth = FUNC1(recurse);

  FUNC2(FUNC12(conn, pool, b));
  if (!FUNC3(rev))
    FUNC0(FUNC7(&rev, b->repository->fs, pool));

  {
    const char *full_path = FUNC8(b->repository->fs_path->data,
                                             target, pool);
    FUNC2(FUNC5(b, conn, pool, "%s",
                        FUNC9(full_path, rev, depth, pool)));
  }

  return FUNC4(NULL, NULL, conn, pool, b, rev, target, NULL, FALSE,
                       depth, FALSE, FALSE);
}