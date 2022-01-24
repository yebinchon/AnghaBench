#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_12__ {TYPE_1__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_11__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* SVN_WC__CONFLICT_KIND_PROP ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char const* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,TYPE_2__*,char const*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__**,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_skel_t *conflict_skel,
                                        svn_wc__db_t *db,
                                        const char *wri_abspath,
                                        const char *marker_abspath,
                                        const apr_hash_t *mine_props,
                                        const apr_hash_t *their_old_props,
                                        const apr_hash_t *their_props,
                                        const apr_hash_t *conflicted_prop_names,
                                        apr_pool_t *result_pool,
                                        apr_pool_t *scratch_pool)
{
  svn_skel_t *prop_conflict;
  svn_skel_t *props;
  svn_skel_t *conflict_names;
  svn_skel_t *markers;
  apr_hash_index_t *hi;

  FUNC0(FUNC6(&prop_conflict, conflict_skel,
                                 SVN_WC__CONFLICT_KIND_PROP));

  FUNC1(!prop_conflict); /* ### Use proper error? */

  /* This function currently implements:
     ("prop"
      ("marker_relpath")
      prop-conflicted_prop_names
      old-props
      mine-props
      their-props)
     NULL lists are recorded as "" */
  /* ### Seems that this may not match what we read out.  Read-out of
   * 'theirs-old' comes as NULL. */

  prop_conflict = FUNC7(result_pool);

  if (their_props)
    {
      FUNC0(FUNC10(&props, their_props, result_pool));
      FUNC8(props, prop_conflict);
    }
  else
    FUNC9("", prop_conflict, result_pool); /* No their_props */

  if (mine_props)
    {
      FUNC0(FUNC10(&props, mine_props, result_pool));
      FUNC8(props, prop_conflict);
    }
  else
    FUNC9("", prop_conflict, result_pool); /* No mine_props */

  if (their_old_props)
    {
      FUNC0(FUNC10(&props, their_old_props,
                                         result_pool));
      FUNC8(props, prop_conflict);
    }
  else
    FUNC9("", prop_conflict, result_pool); /* No old_props */

  conflict_names = FUNC7(result_pool);
  for (hi = FUNC2(scratch_pool, (apr_hash_t *)conflicted_prop_names);
       hi;
       hi = FUNC3(hi))
    {
      FUNC9(FUNC5(result_pool, FUNC4(hi)),
                            conflict_names,
                            result_pool);
    }
  FUNC8(conflict_names, prop_conflict);

  markers = FUNC7(result_pool);

  if (marker_abspath)
    {
      const char *marker_relpath;
      FUNC0(FUNC11(&marker_relpath, db, wri_abspath,
                                    marker_abspath,
                                    result_pool, scratch_pool));

      FUNC9(marker_relpath, markers, result_pool);
    }
/*else // ### set via svn_wc__conflict_create_markers
    svn_skel__prepend(svn_skel__make_empty_list(result_pool), markers);*/

  FUNC8(markers, prop_conflict);

  FUNC9(SVN_WC__CONFLICT_KIND_PROP, prop_conflict, result_pool);

  /* And add it to the conflict skel */
  FUNC8(prop_conflict, conflict_skel->children->next);

  return SVN_NO_ERROR;
}