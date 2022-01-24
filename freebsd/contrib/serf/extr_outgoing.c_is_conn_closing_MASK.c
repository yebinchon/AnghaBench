#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  SERF_ERROR_CLOSING ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static apr_status_t FUNC3(serf_bucket_t *response)
{
    serf_bucket_t *hdrs;
    const char *val;

    hdrs = FUNC1(response);
    val = FUNC0(hdrs, "Connection");
    if (val && FUNC2("close", val) == 0)
        {
            return SERF_ERROR_CLOSING;
        }

    return APR_SUCCESS;
}