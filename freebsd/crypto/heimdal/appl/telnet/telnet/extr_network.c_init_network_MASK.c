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

/* Variables and functions */
 int /*<<< orphan*/  NetTrace ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netibufsize ; 
 int /*<<< orphan*/  netiring ; 
 int /*<<< orphan*/  netobufsize ; 
 int /*<<< orphan*/  netoring ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC3(void)
{
    void *obuf, *ibuf;

    if ((obuf = FUNC1(netobufsize)) == NULL)
	FUNC0(1);
    if ((ibuf = FUNC1(netibufsize)) == NULL)
	FUNC0(1);

    if (FUNC2(&netoring, obuf, netobufsize) != 1) {
	FUNC0(1);
    }
    if (FUNC2(&netiring, ibuf, netibufsize) != 1) {
	FUNC0(1);
    }
    NetTrace = stdout;
}