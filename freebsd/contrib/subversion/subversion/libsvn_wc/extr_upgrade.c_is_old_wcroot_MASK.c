#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ schedule; scalar_t__ depth; scalar_t__ deleted; scalar_t__ absent; } ;
typedef  TYPE_1__ svn_wc_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_WC_INVALID_OP_ON_CWD ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ svn_depth_exclude ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_schedule_add ; 

__attribute__((used)) static svn_error_t *
FUNC10(const char *local_abspath,
              apr_pool_t *scratch_pool)
{
  apr_hash_t *entries;
  const char *parent_abspath, *name;
  svn_wc_entry_t *entry;
  svn_error_t *err = FUNC9(&entries, local_abspath,
                                              scratch_pool, scratch_pool);
  if (err)
    {
      return FUNC7(
        SVN_ERR_WC_INVALID_OP_ON_CWD, err,
        FUNC0("Can't upgrade '%s' as it is not a working copy"),
        FUNC4(local_abspath, scratch_pool));
    }
  else if (FUNC2(local_abspath, FUNC1(local_abspath)))
    return SVN_NO_ERROR;

  FUNC5(&parent_abspath, &name, local_abspath, scratch_pool);

  err = FUNC9(&entries, parent_abspath,
                                 scratch_pool, scratch_pool);
  if (err)
    {
      FUNC6(err);
      return SVN_NO_ERROR;
    }

  entry = FUNC8(entries, name);
  if (!entry
      || entry->absent
      || (entry->deleted && entry->schedule != svn_wc_schedule_add)
      || entry->depth == svn_depth_exclude)
    {
      return SVN_NO_ERROR;
    }

  while (!FUNC2(parent_abspath, FUNC1(parent_abspath)))
    {
      FUNC5(&parent_abspath, &name, parent_abspath, scratch_pool);
      err = FUNC9(&entries, parent_abspath,
                                     scratch_pool, scratch_pool);
      if (err)
        {
          FUNC6(err);
          parent_abspath = FUNC3(parent_abspath, name, scratch_pool);
          break;
        }
      entry = FUNC8(entries, name);
      if (!entry
          || entry->absent
          || (entry->deleted && entry->schedule != svn_wc_schedule_add)
          || entry->depth == svn_depth_exclude)
        {
          parent_abspath = FUNC3(parent_abspath, name, scratch_pool);
          break;
        }
    }

  return FUNC7(
    SVN_ERR_WC_INVALID_OP_ON_CWD, NULL,
    FUNC0("Can't upgrade '%s' as it is not a working copy root,"
      " the root is '%s'"),
    FUNC4(local_abspath, scratch_pool),
    FUNC4(parent_abspath, scratch_pool));
}