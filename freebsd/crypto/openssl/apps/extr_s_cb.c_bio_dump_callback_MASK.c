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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int BIO_CB_READ ; 
 int BIO_CB_RETURN ; 
 int BIO_CB_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void*,void*,unsigned long,long,long) ; 

long FUNC3(BIO *bio, int cmd, const char *argp,
                       int argi, long argl, long ret)
{
    BIO *out;

    out = (BIO *)FUNC1(bio);
    if (out == NULL)
        return ret;

    if (cmd == (BIO_CB_READ | BIO_CB_RETURN)) {
        FUNC2(out, "read from %p [%p] (%lu bytes => %ld (0x%lX))\n",
                   (void *)bio, (void *)argp, (unsigned long)argi, ret, ret);
        FUNC0(out, argp, (int)ret);
        return ret;
    } else if (cmd == (BIO_CB_WRITE | BIO_CB_RETURN)) {
        FUNC2(out, "write to %p [%p] (%lu bytes => %ld (0x%lX))\n",
                   (void *)bio, (void *)argp, (unsigned long)argi, ret, ret);
        FUNC0(out, argp, (int)ret);
    }
    return ret;
}