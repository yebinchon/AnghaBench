#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_4__ svn_prop_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svn_delta_editor_t {int /*<<< orphan*/  (* close_file ) (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* change_dir_prop ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* change_file_prop ) (scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct node_baton {int kind; TYPE_3__* rb; scalar_t__ file_baton; int /*<<< orphan*/  prop_changes; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_8__ {int /*<<< orphan*/ * pool; TYPE_2__* db; TYPE_1__* pb; } ;
struct TYPE_7__ {int /*<<< orphan*/  baton; } ;
struct TYPE_6__ {struct svn_delta_editor_t* commit_editor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  svn_node_dir 129 
#define  svn_node_file 128 

__attribute__((used)) static svn_error_t *
FUNC8(void *baton)
{
  struct node_baton *nb = baton;
  const struct svn_delta_editor_t *commit_editor = nb->rb->pb->commit_editor;
  apr_pool_t *pool = nb->rb->pool;
  apr_hash_index_t *hi;

  for (hi = FUNC1(pool, nb->prop_changes);
       hi; hi = FUNC2(hi))
    {
      const char *name = FUNC3(hi);
      svn_prop_t *prop = FUNC4(hi);

      switch (nb->kind)
        {
        case svn_node_file:
          FUNC0(commit_editor->change_file_prop(nb->file_baton,
                                                  name, prop->value, pool));
          break;
        case svn_node_dir:
          FUNC0(commit_editor->change_dir_prop(nb->rb->db->baton,
                                                 name, prop->value, pool));
          break;
        default:
          break;
        }
    }

  /* Pass a file node closure through to the editor *unless* we
     deleted the file (which doesn't require us to open it). */
  if ((nb->kind == svn_node_file) && (nb->file_baton))
    {
      FUNC0(commit_editor->close_file(nb->file_baton, NULL, nb->rb->pool));
    }

  /* The svn_node_dir case is handled in close_revision */

  return SVN_NO_ERROR;
}