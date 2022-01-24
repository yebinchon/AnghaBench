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
typedef  int /*<<< orphan*/  svn_error_t ;
struct sbb_baton {char* holding; int /*<<< orphan*/  hold_len; int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  spillbuf; } ;
struct TYPE_3__ {struct sbb_baton* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EOF ; 
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t
FUNC3(serf_bucket_t *bucket,
               const char **data, apr_size_t *len)
{
  struct sbb_baton *sbb = bucket->data;
  svn_error_t *err;

  /* If we're not holding any data, then fill it.  */
  if (sbb->holding == NULL)
    {
      err = FUNC2(&sbb->holding, &sbb->hold_len, sbb->spillbuf,
                               sbb->scratch_pool);
      FUNC1(sbb->scratch_pool);

      /* ### do something with this  */
      FUNC0(err);
    }

  /* Return the data we are (now) holding.  */
  *data = sbb->holding;
  *len = sbb->hold_len;

  return *data == NULL ? APR_EOF : APR_SUCCESS;
}