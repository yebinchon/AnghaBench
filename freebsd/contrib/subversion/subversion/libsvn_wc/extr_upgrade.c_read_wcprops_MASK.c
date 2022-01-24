#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_14__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC_ENTRY_THIS_DIR ; 
 int /*<<< orphan*/  WCPROPS_ALL_DATA ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,TYPE_1__**,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(apr_hash_t **all_wcprops,
             const char *dir_abspath,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;
  svn_error_t *err;

  *all_wcprops = FUNC3(result_pool);

  err = FUNC11(&stream, dir_abspath,
                                WCPROPS_ALL_DATA,
                                scratch_pool, scratch_pool);

  /* A non-existent file means there are no props. */
  if (err && FUNC0(err->apr_err))
    {
      FUNC6(err);
      return SVN_NO_ERROR;
    }
  FUNC1(err);

  /* Read the proplist for THIS_DIR. */
  FUNC1(FUNC4(*all_wcprops, SVN_WC_ENTRY_THIS_DIR, stream,
                            result_pool, scratch_pool));

  /* And now, the children. */
  while (1729)
    {
      svn_stringbuf_t *line;
      svn_boolean_t eof;

      FUNC1(FUNC10(stream, &line, "\n", &eof, result_pool));
      if (eof)
        {
          if (line->len > 0)
            return FUNC7
              (SVN_ERR_WC_CORRUPT, NULL,
               FUNC2("Missing end of line in wcprops file for '%s'"),
               FUNC5(dir_abspath, scratch_pool));
          break;
        }
      FUNC1(FUNC4(*all_wcprops, line->data, stream,
                                result_pool, scratch_pool));
    }

  return FUNC8(FUNC9(stream));
}