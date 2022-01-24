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
struct TYPE_2__ {unsigned char* buf; unsigned char* buf2; unsigned int siglen; int /*<<< orphan*/ ** dsa_key; } ;
typedef  TYPE_1__ loopargs_t ;
typedef  int /*<<< orphan*/  DSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int,unsigned char*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ ** dsa_c ; 
 size_t testnum ; 

__attribute__((used)) static int FUNC4(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char *buf2 = tempargs->buf2;
    DSA **dsa_key = tempargs->dsa_key;
    unsigned int siglen = tempargs->siglen;
    int ret, count;
    for (count = 0; FUNC1(dsa_c[testnum][1]); count++) {
        ret = FUNC2(0, buf, 20, buf2, siglen, dsa_key[testnum]);
        if (ret <= 0) {
            FUNC0(bio_err, "DSA verify failure\n");
            FUNC3(bio_err);
            count = -1;
            break;
        }
    }
    return count;
}