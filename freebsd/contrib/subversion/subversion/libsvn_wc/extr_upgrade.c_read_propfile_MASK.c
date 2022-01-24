#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_12__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_13__ {scalar_t__ size; } ;
typedef  TYPE_2__ apr_finfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FINFO_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SVN_HASH_TERMINATOR ; 
 TYPE_1__* SVN_NO_ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(apr_hash_t **props,
              const char *propfile_abspath,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_stream_t *stream;
  apr_finfo_t finfo;

  err = FUNC7(&finfo, propfile_abspath, APR_FINFO_SIZE, scratch_pool);

  if (err
      && (FUNC0(err->apr_err)
          || FUNC2(err->apr_err)))
    {
      FUNC4(err);

      /* The propfile was not there. Signal with a NULL.  */
      *props = NULL;
      return SVN_NO_ERROR;
    }
  else
    FUNC1(err);

  /* A 0-bytes file signals an empty property list.
     (mostly used for revert-props) */
  if (finfo.size == 0)
    {
      *props = FUNC3(result_pool);
      return SVN_NO_ERROR;
    }

  FUNC1(FUNC9(&stream, propfile_abspath,
                                   scratch_pool, scratch_pool));

  /* ### does this function need to be smarter? will we see zero-length
     ### files? see props.c::load_props(). there may be more work here.
     ### need a historic analysis of 1.x property storage. what will we
     ### actually run into?  */

  /* ### loggy_write_properties() and immediate_install_props() write
     ### zero-length files for "no props", so we should be a bit smarter
     ### in here.  */

  /* ### should we be forgiving in here? I say "no". if we can't be sure,
     ### then we could effectively corrupt the local working copy.  */

  *props = FUNC3(result_pool);
  FUNC1(FUNC6(*props, stream, SVN_HASH_TERMINATOR, result_pool));

  return FUNC5(FUNC8(stream));
}