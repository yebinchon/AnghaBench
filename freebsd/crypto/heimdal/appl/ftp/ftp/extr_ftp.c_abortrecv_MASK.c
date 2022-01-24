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
 scalar_t__ abrtflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ mflag ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  recvabort ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC3 (int sig)
{

    mflag = 0;
    abrtflag = 0;
    FUNC2 ("\nreceive aborted\nwaiting for remote to finish abort\n");
    FUNC0 (stdout);
    FUNC1 (recvabort, 1);
}