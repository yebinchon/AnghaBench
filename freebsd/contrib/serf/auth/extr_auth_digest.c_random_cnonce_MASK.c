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
typedef  int /*<<< orphan*/  apr_uuid_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ APR_UUID_FORMATTED_LENGTH ; 
 char* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (unsigned char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC4(apr_pool_t *pool)
{
    apr_uuid_t uuid;
    char *buf = FUNC0(pool, APR_UUID_FORMATTED_LENGTH + 1);

    FUNC2(&uuid);
    FUNC1(buf, &uuid);

    return FUNC3((unsigned char*)buf, pool);
}