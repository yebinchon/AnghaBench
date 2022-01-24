#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_6__ {scalar_t__ is_atom; struct TYPE_6__* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; struct TYPE_6__* children; } ;
typedef  TYPE_1__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_MISSING ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC__CONFLICT_KIND_PROP ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(const char **marker_abspath,
                                    apr_hash_t **mine_props,
                                    apr_hash_t **their_old_props,
                                    apr_hash_t **their_props,
                                    apr_hash_t **conflicted_prop_names,
                                    svn_wc__db_t *db,
                                    const char *wri_abspath,
                                    const svn_skel_t *conflict_skel,
                                    apr_pool_t *result_pool,
                                    apr_pool_t *scratch_pool)
{
  svn_skel_t *prop_conflict;
  const svn_skel_t *c;

  FUNC0(FUNC4(&prop_conflict, conflict_skel,
                                 SVN_WC__CONFLICT_KIND_PROP));

  if (!prop_conflict)
    return FUNC5(SVN_ERR_WC_MISSING, NULL, FUNC1("Conflict not set"));

  c = prop_conflict->children;

  c = c->next; /* Skip "prop" */

  /* Get marker file */
  if (marker_abspath)
    {
      const char *marker_relpath;

      if (c->children && c->children->is_atom)
        {
          marker_relpath = FUNC3(result_pool, c->children->data,
                                        c->children->len);

          FUNC0(FUNC8(marker_abspath, db, wri_abspath,
                                          marker_relpath,
                                          result_pool, scratch_pool));
        }
      else
        *marker_abspath = NULL;
    }
  c = c->next;

  /* Get conflicted properties */
  if (conflicted_prop_names)
    {
      const svn_skel_t *name;
      *conflicted_prop_names = FUNC2(result_pool);

      for (name = c->children; name; name = name->next)
        {
          FUNC6(*conflicted_prop_names,
                        FUNC3(result_pool, name->data, name->len),
                        "");
        }
    }
  c = c->next;

  /* Get original properties */
  if (their_old_props)
    {
      if (c->is_atom)
        *their_old_props = FUNC2(result_pool);
      else
        FUNC0(FUNC7(their_old_props, c, result_pool));
    }
  c = c->next;

  /* Get mine properties */
  if (mine_props)
    {
      if (c->is_atom)
        *mine_props = FUNC2(result_pool);
      else
        FUNC0(FUNC7(mine_props, c, result_pool));
    }
  c = c->next;

  /* Get their properties */
  if (their_props)
    {
      if (c->is_atom)
        *their_props = FUNC2(result_pool);
      else
        FUNC0(FUNC7(their_props, c, result_pool));
    }

  return SVN_NO_ERROR;
}