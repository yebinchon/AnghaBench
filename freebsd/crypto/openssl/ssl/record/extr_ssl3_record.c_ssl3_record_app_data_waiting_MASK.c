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
struct TYPE_3__ {int /*<<< orphan*/  rlayer; } ;
typedef  int /*<<< orphan*/  SSL3_BUFFER ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char SSL3_RT_APPLICATION_DATA ; 
 size_t SSL3_RT_HEADER_LENGTH ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC5(SSL *s)
{
    SSL3_BUFFER *rbuf;
    size_t left, len;
    unsigned char *p;

    rbuf = FUNC0(&s->rlayer);

    p = FUNC1(rbuf);
    if (p == NULL)
        return 0;

    left = FUNC2(rbuf);

    if (left < SSL3_RT_HEADER_LENGTH)
        return 0;

    p += FUNC3(rbuf);

    /*
     * We only check the type and record length, we will sanity check version
     * etc later
     */
    if (*p != SSL3_RT_APPLICATION_DATA)
        return 0;

    p += 3;
    FUNC4(p, len);

    if (left < SSL3_RT_HEADER_LENGTH + len)
        return 0;

    return 1;
}