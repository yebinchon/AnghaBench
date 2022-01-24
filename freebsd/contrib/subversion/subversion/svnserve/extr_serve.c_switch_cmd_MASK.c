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
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_9__ {TYPE_2__* repository; } ;
typedef  TYPE_3__ server_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {char const* repos_url; TYPE_1__* fs_path; int /*<<< orphan*/  fs; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,char const**,char const**,scalar_t__*,scalar_t__*) ; 
 char* FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_tristate_false ; 
 scalar_t__ svn_tristate_true ; 
 char* FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_ra_svn_conn_t *conn,
           apr_pool_t *pool,
           svn_ra_svn__list_t *params,
           void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *target, *depth_word;
  const char *switch_url, *switch_path;
  svn_boolean_t recurse;
  /* Default to unknown.  Old clients won't send depth, but we'll
     handle that by converting recurse if necessary. */
  svn_depth_t depth = svn_depth_unknown;
  svn_tristate_t send_copyfrom_args; /* Optional; default FALSE */
  svn_tristate_t ignore_ancestry; /* Optional; default TRUE */

  /* Parse the arguments. */
  FUNC2(FUNC12(params, "(?r)cbc?w?33", &rev, &target,
                                  &recurse, &switch_url, &depth_word,
                                  &send_copyfrom_args, &ignore_ancestry));
  target = FUNC13(target, pool);
  switch_url = FUNC14(switch_url, pool);

  if (depth_word)
    depth = FUNC7(depth_word);
  else
    depth = FUNC1(recurse);

  FUNC2(FUNC15(conn, pool, b));
  if (!FUNC3(rev))
    FUNC0(FUNC8(&rev, b->repository->fs, pool));

  FUNC0(FUNC5(FUNC11(b->repository->repos_url,
                                              pool),
                          FUNC11(switch_url, pool),
                          &switch_path));

  {
    const char *full_path = FUNC9(b->repository->fs_path->data,
                                             target, pool);
    FUNC2(FUNC6(b, conn, pool, "%s",
                        FUNC10(full_path, switch_path, rev,
                                        depth, pool)));
  }

  return FUNC4(NULL, NULL,
                       conn, pool, b, rev, target, switch_path, TRUE,
                       depth,
                       (send_copyfrom_args == svn_tristate_true),
                       (ignore_ancestry != svn_tristate_false));
}