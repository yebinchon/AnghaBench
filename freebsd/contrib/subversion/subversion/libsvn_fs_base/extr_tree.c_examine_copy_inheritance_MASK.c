#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {scalar_t__ copy_inherit; struct TYPE_6__* parent; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ parent_path_t ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef  TYPE_2__ copy_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ copy_id_inherit_self ; 
 scalar_t__ copy_kind_soft ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char **copy_id,
                         copy_t **copy,
                         svn_fs_t *fs,
                         parent_path_t *parent_path,
                         trail_t *trail,
                         apr_pool_t *pool)
{
  /* The default response -- our current copy ID, and no fetched COPY. */
  *copy_id = FUNC2
    (FUNC1(parent_path->node));
  *copy = NULL;

  /* If we have no parent (we are looking at the root node), or if
     this node is supposed to inherit from itself, return that fact. */
  if (! parent_path->parent)
    return SVN_NO_ERROR;

  /* We could be a branch destination (which would answer our question
     altogether)!  But then, again, we might just have been modified
     in this revision, so all bets are off. */
  if (parent_path->copy_inherit == copy_id_inherit_self)
    {
      /* A copy ID of "0" means we've never been branched.  Therefore,
         there are no copies relevant to our history. */
      if (((*copy_id)[0] == '0') && ((*copy_id)[1] == '\0'))
        return SVN_NO_ERROR;

      /* Get the COPY record.  If it was a real copy (not an implicit
         one), we have our answer.  Otherwise, we fall through to the
         recursive case. */
      FUNC0(FUNC3(copy, fs, *copy_id, trail, pool));
      if ((*copy)->kind != copy_kind_soft)
        return SVN_NO_ERROR;
    }

  /* Otherwise, our answer is dependent upon our parent. */
  return FUNC4(copy_id, copy, fs,
                                  parent_path->parent, trail, pool);
}