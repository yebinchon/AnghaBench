#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  char const* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char const*,char const*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char **label,
               svn_fs_root_t *root,
               const char *path,
               apr_pool_t *pool)
{
  svn_string_t *date;
  const char *datestr;
  const char *name = NULL;
  svn_revnum_t rev = SVN_INVALID_REVNUM;

  if (root)
    {
      svn_fs_t *fs = FUNC6(root);
      if (FUNC2(root))
        {
          rev = FUNC5(root);
          FUNC0(FUNC4(&date, fs, rev,
                                        SVN_PROP_REVISION_DATE, TRUE,
                                        pool, pool));
        }
      else
        {
          svn_fs_txn_t *txn;
          name = FUNC8(root, pool);
          FUNC0(FUNC3(&txn, fs, name, pool));
          FUNC0(FUNC7(&date, txn, SVN_PROP_REVISION_DATE, pool));
        }
    }
  else
    {
      rev = 0;
      date = NULL;
    }

  if (date)
    datestr = FUNC1(pool, "%.10s %.8s UTC", date->data, date->data + 11);
  else
    datestr = "                       ";

  if (name)
    *label = FUNC1(pool, "%s\t%s (txn %s)",
                          path, datestr, name);
  else
    *label = FUNC1(pool, "%s\t%s (rev %ld)",
                          path, datestr, rev);
  return SVN_NO_ERROR;
}