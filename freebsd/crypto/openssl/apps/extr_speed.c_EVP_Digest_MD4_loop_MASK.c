#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned char* buf; } ;
typedef  TYPE_1__ loopargs_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t D_MD4 ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MD4_DIGEST_LENGTH ; 
 int /*<<< orphan*/ ** c ; 
 scalar_t__* lengths ; 
 size_t testnum ; 

__attribute__((used)) static int FUNC3(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char md4[MD4_DIGEST_LENGTH];
    int count;

    for (count = 0; FUNC0(c[D_MD4][testnum]); count++) {
        if (!FUNC1(buf, (size_t)lengths[testnum], md4, NULL, FUNC2(),
                        NULL))
            return -1;
    }
    return count;
}