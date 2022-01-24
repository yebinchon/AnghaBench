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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(
      char *program
      )
{
  FUNC0(stderr, "usage: %s [-n] [-f] [-l] [-t] [-i] [-o] [-d <drift_file>] [-D <input delay>] <device>\n", program);
	FUNC0(stderr, "\t-n              do not change time\n");
	FUNC0(stderr, "\t-i              interactive\n");
	FUNC0(stderr, "\t-t              trace (print all datagrams)\n");
	FUNC0(stderr, "\t-f              print all databits (includes PTB private data)\n");
	FUNC0(stderr, "\t-l              print loop filter debug information\n");
	FUNC0(stderr, "\t-o              print offet average for current minute\n");
	FUNC0(stderr, "\t-Y              make internal Y2K checks then exit\n");	/* Y2KFixes */
	FUNC0(stderr, "\t-d <drift_file> specify alternate drift file\n");
	FUNC0(stderr, "\t-D <input delay>specify delay from input edge to processing in micro seconds\n");
}