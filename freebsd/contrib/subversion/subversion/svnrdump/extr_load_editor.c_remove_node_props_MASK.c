#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_prop_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_baton {TYPE_2__* pb; TYPE_1__* db; int /*<<< orphan*/ * pool; } ;
struct node_baton {char const* copyfrom_path; scalar_t__ kind; char* path; scalar_t__ action; struct revision_baton* rb; int /*<<< orphan*/  is_added; int /*<<< orphan*/  copyfrom_rev; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_4__ {int /*<<< orphan*/  aux_session; } ;
struct TYPE_3__ {char const* copyfrom_path; int /*<<< orphan*/  copyfrom_rev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct node_baton*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_action_add ; 
 scalar_t__ svn_node_action_replace ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_prop_regular_kind ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(void *baton)
{
  struct node_baton *nb = baton;
  struct revision_baton *rb = nb->rb;
  apr_pool_t *pool = nb->rb->pool;
  apr_hash_index_t *hi;
  apr_hash_t *props;
  const char *orig_path;
  svn_revnum_t orig_rev;

  /* Find the path and revision that has the node's original properties */
  if (FUNC0(nb->copyfrom_path, nb->copyfrom_rev))
    {
      orig_path = nb->copyfrom_path;
      orig_rev = nb->copyfrom_rev;
    }
  else if (!nb->is_added
           && FUNC0(rb->db->copyfrom_path, rb->db->copyfrom_rev))
    {
      /* If this is a dir, then it's described by rb->db;
         if this is a file, then it's a child of the dir in rb->db. */
      orig_path = (nb->kind == svn_node_dir)
                    ? rb->db->copyfrom_path
                    : FUNC10(rb->db->copyfrom_path,
                                       FUNC9(nb->path, NULL),
                                       rb->pool);
      orig_rev = rb->db->copyfrom_rev;
    }
  else
    {
      /* ### Should we query at a known, fixed, "head" revision number
         instead of passing SVN_INVALID_REVNUM and getting a moving target? */
      orig_path = nb->path;
      orig_rev = SVN_INVALID_REVNUM;
    }

  if ((nb->action == svn_node_action_add
            || nb->action == svn_node_action_replace)
      && ! FUNC0(orig_path, orig_rev))
    /* Add-without-history; no "old" properties to worry about. */
    return SVN_NO_ERROR;

  if (nb->kind == svn_node_file)
    {
      FUNC1(FUNC8(nb->rb->pb->aux_session,
                              orig_path, orig_rev, NULL, NULL, &props, pool));
    }
  else  /* nb->kind == svn_node_dir */
    {
      FUNC1(FUNC7(nb->rb->pb->aux_session, NULL, NULL, &props,
                              orig_path, orig_rev, 0, pool));
    }

  for (hi = FUNC2(pool, props); hi; hi = FUNC3(hi))
    {
      const char *name = FUNC4(hi);
      svn_prop_kind_t kind = FUNC6(name);

      if (kind == svn_prop_regular_kind)
        FUNC1(FUNC5(nb, name, NULL));
    }

  return SVN_NO_ERROR;
}