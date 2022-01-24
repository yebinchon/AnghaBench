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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct ev2_edit_baton {int /*<<< orphan*/  edit_pool; int /*<<< orphan*/  fetch_props_baton; int /*<<< orphan*/  (* fetch_props_func ) (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct change_node {scalar_t__ kind; scalar_t__ changing; char const* copyfrom_path; scalar_t__ copyfrom_rev; scalar_t__ action; int /*<<< orphan*/ * props; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ RESTRUCTURE_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 char const* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 struct change_node* FUNC5 (struct ev2_edit_baton*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC10(struct ev2_edit_baton *eb,
               const char *relpath,
               svn_node_kind_t kind,
               svn_revnum_t base_revision,
               const char *name,
               const svn_string_t *value,
               apr_pool_t *scratch_pool)
{
  struct change_node *change = FUNC5(eb, relpath);

  FUNC1(change->kind == svn_node_unknown || change->kind == kind);
  change->kind = kind;

  /* We're now changing the node. Record the revision.  */
  FUNC1(!FUNC2(change->changing)
                 || change->changing == base_revision);
  change->changing = base_revision;

  if (change->props == NULL)
    {
      /* Fetch the original set of properties. We'll apply edits to create
         the new/target set of properties.

         If this is a copied/moved now, then the original properties come
         from there. If the node has been added, it starts with empty props.
         Otherwise, we get the properties from BASE.  */

      if (change->copyfrom_path)
        FUNC0(eb->fetch_props_func(&change->props,
                                     eb->fetch_props_baton,
                                     change->copyfrom_path,
                                     change->copyfrom_rev,
                                     eb->edit_pool, scratch_pool));
      else if (change->action == RESTRUCTURE_ADD)
        change->props = FUNC3(eb->edit_pool);
      else
        FUNC0(eb->fetch_props_func(&change->props,
                                     eb->fetch_props_baton,
                                     relpath, base_revision,
                                     eb->edit_pool, scratch_pool));
    }

  if (value == NULL)
    FUNC8(change->props, name, NULL);
  else
    FUNC8(change->props,
                  FUNC4(eb->edit_pool, name),
                  FUNC9(value, eb->edit_pool));

  return SVN_NO_ERROR;
}