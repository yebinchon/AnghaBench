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
typedef  scalar_t__ svn_tristate_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_9__ {TYPE_2__* repository; } ;
typedef  TYPE_3__ server_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {int /*<<< orphan*/  fs; TYPE_1__* fs_path; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_authz_read ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char const**,scalar_t__*,char const**,scalar_t__*,scalar_t__*) ; 
 char* FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_tristate_true ; 

__attribute__((used)) static svn_error_t *
FUNC14(svn_ra_svn_conn_t *conn,
       apr_pool_t *pool,
       svn_ra_svn__list_t *params,
       void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *target, *full_path, *depth_word;
  svn_boolean_t recurse;
  svn_tristate_t send_copyfrom_args; /* Optional; default FALSE */
  svn_tristate_t ignore_ancestry; /* Optional; default FALSE */
  /* Default to unknown.  Old clients won't send depth, but we'll
     handle that by converting recurse if necessary. */
  svn_depth_t depth = svn_depth_unknown;
  svn_boolean_t is_checkout;

  /* Parse the arguments. */
  FUNC2(FUNC12(params, "(?r)cb?w3?3", &rev, &target,
                                  &recurse, &depth_word,
                                  &send_copyfrom_args, &ignore_ancestry));
  target = FUNC13(target, pool);

  if (depth_word)
    depth = FUNC7(depth_word);
  else
    depth = FUNC1(recurse);

  full_path = FUNC9(b->repository->fs_path->data, target, pool);
  /* Check authorization and authenticate the user if necessary. */
  FUNC2(FUNC6(conn, pool, b, svn_authz_read, full_path, FALSE));

  if (!FUNC3(rev))
    FUNC0(FUNC8(&rev, b->repository->fs, pool));

  FUNC2(FUNC4(&is_checkout, NULL,
                        conn, pool, b, rev, target, NULL, TRUE,
                        depth,
                        (send_copyfrom_args == svn_tristate_true),
                        (ignore_ancestry == svn_tristate_true)));
  if (is_checkout)
    {
      FUNC2(FUNC5(b, conn, pool, "%s",
                          FUNC10(full_path, rev,
                                            depth, pool)));
    }
  else
    {
      FUNC2(FUNC5(b, conn, pool, "%s",
                          FUNC11(full_path, rev, depth,
                                          (send_copyfrom_args
                                           == svn_tristate_true),
                                          pool)));
    }

  return SVN_NO_ERROR;
}