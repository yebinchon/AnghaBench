#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * spillbuf; TYPE_1__* report; } ;
typedef  TYPE_2__ update_delay_baton_t ;
struct TYPE_14__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_12__ {scalar_t__ num_active_fetches; scalar_t__ num_active_propfinds; int /*<<< orphan*/  report_received; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ REQUEST_COUNT_TO_RESUME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(update_delay_baton_t *udb,
                apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = NULL;
  serf_bucket_alloc_t *alloc = NULL;

  while ((udb->report->num_active_fetches + udb->report->num_active_propfinds)
            < REQUEST_COUNT_TO_RESUME)
    {
      const char *data;
      apr_size_t len;
      svn_boolean_t at_eof;
      svn_error_t *err;

      if (!iterpool)
        {
          iterpool = FUNC8(scratch_pool);
          alloc = FUNC4(scratch_pool, NULL, NULL);
        }
      else
        FUNC7(iterpool);

      FUNC2(FUNC10(&data, &len, udb->spillbuf, iterpool));

      if (data == NULL && !udb->report->report_received)
        break;
      else if (data == NULL)
        at_eof = TRUE;
      else
        at_eof = FALSE;

      err = FUNC3(udb, NULL /* allowed? */, data, len,
                           at_eof, alloc, iterpool);

      if (err && FUNC0(err->apr_err))
        {
          FUNC5(err); /* Throttling is working */
        }
      else if (err && FUNC1(err->apr_err))
        {
          FUNC5(err);

          FUNC9(iterpool);
          udb->spillbuf = NULL;
          return SVN_NO_ERROR;
        }
      else if (err)
        return FUNC6(err);
    }

  if (iterpool)
    FUNC9(iterpool);

  return SVN_NO_ERROR;
}