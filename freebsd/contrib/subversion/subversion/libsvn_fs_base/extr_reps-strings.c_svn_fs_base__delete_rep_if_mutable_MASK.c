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
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/  string_key; } ;
struct TYPE_7__ {TYPE_2__ fulltext; } ;
struct TYPE_9__ {scalar_t__ kind; TYPE_1__ contents; } ;
typedef  TYPE_3__ representation_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char const*) ; 
 scalar_t__ rep_kind_delta ; 
 scalar_t__ rep_kind_fulltext ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_fs_t *fs,
                                   const char *rep_key,
                                   const char *txn_id,
                                   trail_t *trail,
                                   apr_pool_t *pool)
{
  representation_t *rep;

  FUNC0(FUNC6(&rep, fs, rep_key, trail, pool));
  if (! FUNC4(rep, txn_id))
    return SVN_NO_ERROR;

  if (rep->kind == rep_kind_fulltext)
    {
      FUNC0(FUNC7(fs,
                                        rep->contents.fulltext.string_key,
                                        trail, pool));
    }
  else if (rep->kind == rep_kind_delta)
    {
      apr_array_header_t *keys;
      FUNC0(FUNC3(&keys, rep, pool));
      FUNC0(FUNC2(keys, fs, trail, pool));
    }
  else /* unknown kind */
    return FUNC1(rep_key);

  return FUNC5(fs, rep_key, trail, pool);
}