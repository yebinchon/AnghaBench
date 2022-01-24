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
typedef  int /*<<< orphan*/  heim_isemaphore ;
typedef  int /*<<< orphan*/  heim_idata ;
typedef  int /*<<< orphan*/  heim_icred ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(void *ctx, int errorcode, heim_idata *reply, heim_icred cred)
{
    FUNC1("got reply\n");
    FUNC0((heim_isemaphore)ctx); /* tell caller we are done */
}