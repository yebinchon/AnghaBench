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
 int /*<<< orphan*/  SSL_F_SSL_READ ; 
 int /*<<< orphan*/  SSL_R_BAD_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,size_t,size_t*) ; 

int FUNC2(SSL *s, void *buf, int num)
{
    int ret;
    size_t readbytes;

    if (num < 0) {
        FUNC0(SSL_F_SSL_READ, SSL_R_BAD_LENGTH);
        return -1;
    }

    ret = FUNC1(s, buf, (size_t)num, &readbytes);

    /*
     * The cast is safe here because ret should be <= INT_MAX because num is
     * <= INT_MAX
     */
    if (ret > 0)
        ret = (int)readbytes;

    return ret;
}