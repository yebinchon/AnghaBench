#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_11__ {TYPE_1__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* SVN_WC__CONFLICT_KIND_TEXT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_2__*,char const*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_skel_t *conflict_skel,
                                        svn_wc__db_t *db,
                                        const char *wri_abspath,
                                        const char *mine_abspath,
                                        const char *their_old_abspath,
                                        const char *their_abspath,
                                        apr_pool_t *result_pool,
                                        apr_pool_t *scratch_pool)
{
  svn_skel_t *text_conflict;
  svn_skel_t *markers;

  FUNC0(FUNC2(&text_conflict, conflict_skel,
                                 SVN_WC__CONFLICT_KIND_TEXT));

  FUNC1(!text_conflict); /* ### Use proper error? */

  /* Current skel format
     ("text"
      (OLD MINE OLD-THEIRS THEIRS)) */

  text_conflict = FUNC3(result_pool);
  markers = FUNC3(result_pool);

if (their_abspath)
    {
      const char *their_relpath;

      FUNC0(FUNC6(&their_relpath,
                                    db, wri_abspath, their_abspath,
                                    result_pool, scratch_pool));
      FUNC5(their_relpath, markers, result_pool);
    }
  else
    FUNC4(FUNC3(result_pool), markers);

  if (mine_abspath)
    {
      const char *mine_relpath;

      FUNC0(FUNC6(&mine_relpath,
                                    db, wri_abspath, mine_abspath,
                                    result_pool, scratch_pool));
      FUNC5(mine_relpath, markers, result_pool);
    }
  else
    FUNC4(FUNC3(result_pool), markers);

  if (their_old_abspath)
    {
      const char *original_relpath;

      FUNC0(FUNC6(&original_relpath,
                                    db, wri_abspath, their_old_abspath,
                                    result_pool, scratch_pool));
      FUNC5(original_relpath, markers, result_pool);
    }
  else
    FUNC4(FUNC3(result_pool), markers);

  FUNC4(markers, text_conflict);
  FUNC5(SVN_WC__CONFLICT_KIND_TEXT, text_conflict,
                        result_pool);

  /* And add it to the conflict skel */
  FUNC4(text_conflict, conflict_skel->children->next);

  return SVN_NO_ERROR;
}