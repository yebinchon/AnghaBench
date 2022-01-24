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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; scalar_t__ is_atom; struct TYPE_9__* next; TYPE_2__* children; } ;
typedef  TYPE_3__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {TYPE_1__* next; } ;
struct TYPE_7__ {TYPE_3__* children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_MISSING ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC__CONFLICT_KIND_TEXT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**,TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(const char **mine_abspath,
                                    const char **their_old_abspath,
                                    const char **their_abspath,
                                    svn_wc__db_t *db,
                                    const char *wri_abspath,
                                    const svn_skel_t *conflict_skel,
                                    apr_pool_t *result_pool,
                                    apr_pool_t *scratch_pool)
{
  svn_skel_t *text_conflict;
  const svn_skel_t *m;

  FUNC0(FUNC3(&text_conflict, conflict_skel,
                                 SVN_WC__CONFLICT_KIND_TEXT));

  if (!text_conflict)
    return FUNC4(SVN_ERR_WC_MISSING, NULL, FUNC1("Conflict not set"));

  m = text_conflict->children->next->children;

  if (their_old_abspath)
    {
      if (m->is_atom)
        {
          const char *original_relpath;

          original_relpath = FUNC2(scratch_pool, m->data, m->len);
          FUNC0(FUNC5(their_old_abspath,
                                          db, wri_abspath, original_relpath,
                                          result_pool, scratch_pool));
        }
      else
        *their_old_abspath = NULL;
    }
  m = m->next;

  if (mine_abspath)
    {
      if (m->is_atom)
        {
          const char *mine_relpath;

          mine_relpath = FUNC2(scratch_pool, m->data, m->len);
          FUNC0(FUNC5(mine_abspath,
                                          db, wri_abspath, mine_relpath,
                                          result_pool, scratch_pool));
        }
      else
        *mine_abspath = NULL;
    }
  m = m->next;

  if (their_abspath)
    {
      if (m->is_atom)
        {
          const char *their_relpath;

          their_relpath = FUNC2(scratch_pool, m->data, m->len);
          FUNC0(FUNC5(their_abspath,
                                          db, wri_abspath, their_relpath,
                                          result_pool, scratch_pool));
        }
      else
        *their_abspath = NULL;
    }

  return SVN_NO_ERROR;
}