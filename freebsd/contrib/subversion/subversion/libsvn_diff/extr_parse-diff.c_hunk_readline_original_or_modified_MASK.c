#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct svn_diff__hunk_range {scalar_t__ current; scalar_t__ end; } ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SET ; 
 scalar_t__ APR_SIZE_MAX ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__**,char const**,int*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(apr_file_t *file,
                                   struct svn_diff__hunk_range *range,
                                   svn_stringbuf_t **stringbuf,
                                   const char **eol,
                                   svn_boolean_t *eof,
                                   char verboten,
                                   svn_boolean_t no_final_eol,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  apr_size_t max_len;
  svn_boolean_t filtered;
  apr_off_t pos;
  svn_stringbuf_t *str;
  const char *eol_p;
  apr_pool_t *last_pool;

  if (!eol)
    eol = &eol_p;

  if (range->current >= range->end)
    {
      /* We're past the range. Indicate that no bytes can be read. */
      *eof = TRUE;
      *eol = NULL;
      *stringbuf = FUNC9(result_pool);
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC2(&pos, file, scratch_pool));
  FUNC0(FUNC4(file, APR_SET, &range->current, scratch_pool));

  /* It's not ITERPOOL because we use data allocated in LAST_POOL out
     of the loop. */
  last_pool = FUNC6(scratch_pool);
  do
    {
      FUNC5(last_pool);

      max_len = range->end - range->current;
      FUNC0(FUNC3(file, &str, eol, eof, max_len,
                                   last_pool, last_pool));
      FUNC0(FUNC2(&range->current, file, last_pool));
      filtered = (str->data[0] == verboten || str->data[0] == '\\');
    }
  while (filtered && ! *eof);

  if (filtered)
    {
      /* EOF, return an empty string. */
      *stringbuf = FUNC10(0, result_pool);
      *eol = NULL;
    }
  else if (str->data[0] == '+' || str->data[0] == '-' || str->data[0] == ' ')
    {
      /* Shave off leading unidiff symbols. */
      *stringbuf = FUNC8(str->data + 1, result_pool);
    }
  else
    {
      /* Return the line as-is. Handle as a chopped leading spaces */
      *stringbuf = FUNC11(str, result_pool);
    }

  if (!filtered && *eof && !*eol && *str->data)
    {
      /* Ok, we miss a final EOL in the patch file, but didn't see a
         no eol marker line.

         We should report that we had an EOL or the patch code will
         misbehave (and it knows nothing about no eol markers) */

      if (!no_final_eol && eol != &eol_p)
        {
          apr_off_t start = 0;

          FUNC0(FUNC4(file, APR_SET, &start, scratch_pool));

          FUNC0(FUNC3(file, &str, eol, NULL, APR_SIZE_MAX,
                                       scratch_pool, scratch_pool));

          /* Every patch file that has hunks has at least one EOL*/
          FUNC1(*eol != NULL);
        }

      *eof = FALSE;
      /* Fall through to seek back to the right location */
    }
  FUNC0(FUNC4(file, APR_SET, &pos, scratch_pool));

  FUNC7(last_pool);
  return SVN_NO_ERROR;
}