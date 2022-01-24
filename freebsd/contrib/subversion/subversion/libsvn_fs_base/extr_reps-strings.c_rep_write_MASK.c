#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  string_key; } ;
struct TYPE_7__ {TYPE_1__ fulltext; } ;
struct TYPE_8__ {scalar_t__ kind; TYPE_2__ contents; } ;
typedef  TYPE_3__ representation_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_ERR_FS_REP_NOT_MUTABLE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char const*) ; 
 scalar_t__ rep_kind_delta ; 
 scalar_t__ rep_kind_fulltext ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_fs_t *fs,
          const char *rep_key,
          const char *buf,
          apr_size_t len,
          const char *txn_id,
          trail_t *trail,
          apr_pool_t *pool)
{
  representation_t *rep;

  FUNC0(FUNC5(&rep, fs, rep_key, trail, pool));

  if (! FUNC3(rep, txn_id))
    return FUNC4
      (SVN_ERR_FS_REP_NOT_MUTABLE, NULL,
       FUNC2("Rep '%s' is not mutable"), rep_key);

  if (rep->kind == rep_kind_fulltext)
    {
      FUNC0(FUNC6
              (fs, &(rep->contents.fulltext.string_key), len, buf,
               trail, pool));
    }
  else if (rep->kind == rep_kind_delta)
    {
      /* There should never be a case when we have a mutable
         non-fulltext rep.  The only code that creates mutable reps is
         in this file, and it creates them fulltext. */
      return FUNC4
        (SVN_ERR_FS_CORRUPT, NULL,
         FUNC2("Rep '%s' both mutable and non-fulltext"), rep_key);
    }
  else /* unknown kind */
    return FUNC1(rep_key);

  return SVN_NO_ERROR;
}