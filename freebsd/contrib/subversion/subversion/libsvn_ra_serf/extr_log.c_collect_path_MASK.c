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
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_7__ {char action; void* props_modified; void* text_modified; int /*<<< orphan*/  node_kind; scalar_t__ copyfrom_rev; int /*<<< orphan*/  copyfrom_path; } ;
typedef  TYPE_2__ svn_log_changed_path2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 void* FUNC10 (char*) ; 

__attribute__((used)) static svn_error_t *
FUNC11(apr_hash_t *paths,
             char action,
             const svn_string_t *cdata,
             apr_hash_t *attrs)
{
  apr_pool_t *result_pool = FUNC2(paths);
  svn_log_changed_path2_t *lcp;
  const char *copyfrom_path;
  const char *copyfrom_rev;
  const char *path;

  lcp = FUNC8(result_pool);
  lcp->action = action;
  lcp->copyfrom_rev = SVN_INVALID_REVNUM;

  /* COPYFROM_* are only recorded for ADDED_PATH and REPLACED_PATH.  */
  copyfrom_path = FUNC6(attrs, "copyfrom-path");
  copyfrom_rev = FUNC6(attrs, "copyfrom-rev");
  if (copyfrom_path && copyfrom_rev)
    {
      apr_int64_t rev;

      FUNC0(FUNC5(&rev, copyfrom_rev));

      if (FUNC1((svn_revnum_t)rev))
        {
          lcp->copyfrom_path = FUNC3(result_pool, copyfrom_path);
          lcp->copyfrom_rev = (svn_revnum_t)rev;
        }
    }

  lcp->node_kind = FUNC9(FUNC6(attrs, "node-kind"));
  lcp->text_modified = FUNC10(FUNC6(attrs,
                                                             "text-mods"));
  lcp->props_modified = FUNC10(FUNC6(attrs,
                                                              "prop-mods"));

  path = FUNC4(result_pool, cdata->data, cdata->len);
  FUNC7(paths, path, lcp);

  return SVN_NO_ERROR;
}