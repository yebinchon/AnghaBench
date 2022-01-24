#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
struct TYPE_10__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_MERGEINFO_PARSE_ERROR ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const svn_string_t *value,
                 const char *path,
                 apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_mergeinfo_t mergeinfo;

  /* It's okay to delete svn:mergeinfo. */
  if (value == NULL)
    return SVN_NO_ERROR;

  /* Mergeinfo is UTF-8 encoded so the number of bytes returned by strlen()
   * should match VALUE->LEN. Prevents trailing garbage in the property. */
  if (FUNC1(value->data) != value->len)
    return FUNC2(SVN_ERR_MERGEINFO_PARSE_ERROR, NULL,
                             FUNC0("Commit rejected because mergeinfo on '%s' "
                               "contains unexpected string terminator"),
                             path);

  err = FUNC3(&mergeinfo, value->data, scratch_pool);
  if (err)
    return FUNC2(err->apr_err, err,
                             FUNC0("Commit rejected because mergeinfo on '%s' "
                               "is syntactically invalid"),
                             path);
  return SVN_NO_ERROR;
}