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
struct TYPE_7__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_8__ {int /*<<< orphan*/  md5_digest; TYPE_1__ id; } ;
typedef  TYPE_2__ svn_fs_x__representation_t ;
struct TYPE_9__ {int /*<<< orphan*/  noderev_id; TYPE_2__* prop_rep; } ;
typedef  TYPE_3__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC6(svn_boolean_t *equal,
                         svn_fs_t *fs,
                         svn_fs_x__noderev_t *a,
                         svn_fs_x__noderev_t *b,
                         svn_boolean_t strict,
                         apr_pool_t *scratch_pool)
{
  svn_fs_x__representation_t *rep_a = a->prop_rep;
  svn_fs_x__representation_t *rep_b = b->prop_rep;
  apr_hash_t *proplist_a;
  apr_hash_t *proplist_b;

  /* Mainly for a==b==NULL */
  if (rep_a == rep_b)
    {
      *equal = TRUE;
      return SVN_NO_ERROR;
    }

  /* Committed property lists can be compared quickly */
  if (   rep_a && rep_b
      && FUNC5(rep_a->id.change_set)
      && FUNC5(rep_b->id.change_set))
    {
      /* MD5 must be given. Having the same checksum is good enough for
         accepting the prop lists as equal. */
      *equal = FUNC1(rep_a->md5_digest, rep_b->md5_digest,
                      sizeof(rep_a->md5_digest)) == 0;
      return SVN_NO_ERROR;
    }

  /* Same path in same txn? */
  if (FUNC4(&a->noderev_id, &b->noderev_id))
    {
      *equal = TRUE;
      return SVN_NO_ERROR;
    }

  /* Skip the expensive bits unless we are in strict mode.
     Simply assume that there is a different. */
  if (!strict)
    {
      *equal = FALSE;
      return SVN_NO_ERROR;
    }

  /* At least one of the reps has been modified in a txn.
     Fetch and compare them. */
  FUNC0(FUNC3(&proplist_a, fs, a, scratch_pool,
                                 scratch_pool));
  FUNC0(FUNC3(&proplist_b, fs, b, scratch_pool,
                                 scratch_pool));

  *equal = FUNC2(proplist_a, proplist_b, scratch_pool);
  return SVN_NO_ERROR;
}