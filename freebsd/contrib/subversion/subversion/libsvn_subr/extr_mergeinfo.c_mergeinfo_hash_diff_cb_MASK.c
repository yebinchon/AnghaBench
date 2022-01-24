#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ svn_rangelist_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct mergeinfo_diff_baton {int /*<<< orphan*/  pool; scalar_t__ added; int /*<<< orphan*/  to; scalar_t__ deleted; int /*<<< orphan*/  from; int /*<<< orphan*/  consider_inheritance; } ;
typedef  enum svn_hash_diff_key_status { ____Placeholder_svn_hash_diff_key_status } svn_hash_diff_key_status ;
typedef  int /*<<< orphan*/  apr_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int svn_hash_diff_key_a ; 
 int svn_hash_diff_key_b ; 
 int svn_hash_diff_key_both ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,TYPE_1__**,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const void *key, apr_ssize_t klen,
                       enum svn_hash_diff_key_status status,
                       void *baton)
{
  /* hash_a is FROM mergeinfo,
     hash_b is TO mergeinfo. */
  struct mergeinfo_diff_baton *cb = baton;
  svn_rangelist_t *from_rangelist, *to_rangelist;
  const char *path = key;
  if (status == svn_hash_diff_key_both)
    {
      /* Record any deltas (additions or deletions). */
      svn_rangelist_t *deleted_rangelist, *added_rangelist;
      from_rangelist = FUNC1(cb->from, path, klen);
      to_rangelist = FUNC1(cb->to, path, klen);
      FUNC0(FUNC4(&deleted_rangelist, &added_rangelist,
                                 from_rangelist, to_rangelist,
                                 cb->consider_inheritance, cb->pool));
      if (cb->deleted && deleted_rangelist->nelts > 0)
        FUNC2(cb->deleted, FUNC3(cb->pool, path, klen),
                     klen, deleted_rangelist);
      if (cb->added && added_rangelist->nelts > 0)
        FUNC2(cb->added, FUNC3(cb->pool, path, klen),
                     klen, added_rangelist);
    }
  else if ((status == svn_hash_diff_key_a) && cb->deleted)
    {
      from_rangelist = FUNC1(cb->from, path, klen);
      FUNC2(cb->deleted, FUNC3(cb->pool, path, klen), klen,
                   FUNC5(from_rangelist, cb->pool));
    }
  else if ((status == svn_hash_diff_key_b) && cb->added)
    {
      to_rangelist = FUNC1(cb->to, path, klen);
      FUNC2(cb->added, FUNC3(cb->pool, path, klen), klen,
                   FUNC5(to_rangelist, cb->pool));
    }
  return SVN_NO_ERROR;
}