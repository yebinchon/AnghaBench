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
struct TYPE_3__ {int flags; scalar_t__ ptr; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int BIO_FLAGS_UPLINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(BIO *bp, char *buf, int size)
{
    int ret = 0;

    buf[0] = '\0';
    if (bp->flags & BIO_FLAGS_UPLINK) {
        if (!FUNC0(buf, size, bp->ptr))
            goto err;
    } else {
        if (!FUNC1(buf, size, (FILE *)bp->ptr))
            goto err;
    }
    if (buf[0] != '\0')
        ret = FUNC2(buf);
 err:
    return ret;
}