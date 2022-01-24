#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_BAD_VERSION_FILE_FORMAT ; 
 int /*<<< orphan*/  SVN_ERR_WC_MISSING ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC__ADM_ENTRIES ; 
 int /*<<< orphan*/  SVN_WC__ADM_FORMAT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(int *version,
                const char *abspath,
                apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  const char *format_file_path;
  svn_node_kind_t kind;

  /* Try reading the format number from the entries file.  */
  format_file_path = FUNC9(abspath, SVN_WC__ADM_ENTRIES,
                                       scratch_pool);

  /* Since trying to open a non-existent file is quite expensive, try a
     quick stat call first. In wc-ng w/cs, this will be an early exit. */
  FUNC2(FUNC7(format_file_path, &kind, scratch_pool));
  if (kind == svn_node_none)
    {
      *version = 0;
      return SVN_NO_ERROR;
    }

  err = FUNC8(version, format_file_path, scratch_pool);
  if (err == NULL)
    return SVN_NO_ERROR;
  if (err->apr_err != SVN_ERR_BAD_VERSION_FILE_FORMAT
      && !FUNC0(err->apr_err)
      && !FUNC1(err->apr_err))
    return FUNC6(SVN_ERR_WC_MISSING, err, FUNC3("'%s' does not exist"),
                             FUNC4(abspath, scratch_pool));
  FUNC5(err);

  /* This must be a really old working copy!  Fall back to reading the
     format file.

     Note that the format file might not exist in newer working copies
     (format 7 and higher), but in that case, the entries file should
     have contained the format number. */
  format_file_path = FUNC9(abspath, SVN_WC__ADM_FORMAT,
                                       scratch_pool);
  err = FUNC8(version, format_file_path, scratch_pool);
  if (err == NULL)
    return SVN_NO_ERROR;

  /* Whatever error may have occurred... we can just ignore. This is not
     a working copy directory. Signal the caller.  */
  FUNC5(err);

  *version = 0;
  return SVN_NO_ERROR;
}