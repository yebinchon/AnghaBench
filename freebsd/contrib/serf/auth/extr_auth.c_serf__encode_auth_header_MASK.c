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
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 

void FUNC5(const char **header,
                              const char *scheme,
                              const char *data, apr_size_t data_len,
                              apr_pool_t *pool)
{
    apr_size_t encoded_len, scheme_len;
    char *ptr;

    encoded_len = FUNC1(data_len);
    scheme_len = FUNC4(scheme);

    ptr = FUNC3(pool, encoded_len + scheme_len + 1);
    *header = ptr;

    FUNC2(ptr, scheme, scheme_len + 1);
    ptr += scheme_len;
    *ptr++ = ' ';

    FUNC0(ptr, data, data_len);
}