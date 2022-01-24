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
 char* LIBXO_VERSION ; 
 int /*<<< orphan*/  LIBXO_VERSION_EXTRA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* xo_version ; 
 int /*<<< orphan*/  xo_version_extra ; 

__attribute__((used)) static void
FUNC1 (void)
{
    FUNC0(stderr, "libxo version %s%d\n",
	    xo_version, xo_version_extra);
    FUNC0(stderr, "xopo version %s%d\n",
	    LIBXO_VERSION, LIBXO_VERSION_EXTRA);
}