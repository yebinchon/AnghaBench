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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(void)
{

	FUNC1(stderr,
"usage: %s [-DLlMNnPStUX] [-a maxcontig] [-b block-size]\n"
"\t[-c blocks-per-cylinder-group][-d max-extent-size] [-E path-mdconfig]\n"
"\t[-e maxbpg] [-F file] [-f frag-size] [-i bytes] [-k skel]\n"
"\t[-m percent-free] [-O optimization] [-o mount-options]\n"
"\t[-p permissions] [-s size] [-v version] [-w user:group]\n"
"\tmd-device mount-point\n", FUNC2());
	FUNC0(1);
}