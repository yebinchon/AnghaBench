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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 scalar_t__ cookie_initialized ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char const*,unsigned int) ; 

int FUNC2(SSL *ssl, const unsigned char *cookie,
                           unsigned int cookie_len)
{
    unsigned char result[EVP_MAX_MD_SIZE];
    unsigned int resultlength;

    /* Note: we check cookie_initialized because if it's not,
     * it cannot be valid */
    if (cookie_initialized
        && FUNC0(ssl, result, &resultlength)
        && cookie_len == resultlength
        && FUNC1(result, cookie, resultlength) == 0)
        return 1;

    return 0;
}