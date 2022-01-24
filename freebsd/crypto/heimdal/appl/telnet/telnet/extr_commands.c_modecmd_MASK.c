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
struct modelist {int (* handler ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  arg1; scalar_t__ needconnect; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct modelist*) ; 
 struct modelist* FUNC1 (char*) ; 
 int /*<<< orphan*/  connected ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(int argc, char **argv)
{
    struct modelist *mt;

    if (argc != 2) {
	FUNC3("'mode' command requires an argument\r\n");
	FUNC3("'mode ?' for help.\r\n");
    } else if ((mt = FUNC1(argv[1])) == 0) {
	FUNC2(stderr, "Unknown mode '%s' ('mode ?' for help).\r\n", argv[1]);
    } else if (FUNC0(mt)) {
	FUNC2(stderr, "Ambiguous mode '%s' ('mode ?' for help).\r\n", argv[1]);
    } else if (mt->needconnect && !connected) {
	FUNC3("?Need to be connected first.\r\n");
	FUNC3("'mode ?' for help.\r\n");
    } else if (mt->handler) {
	return (*mt->handler)(mt->arg1);
    }
    return 0;
}