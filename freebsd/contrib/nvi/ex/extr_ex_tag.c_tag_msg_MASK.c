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
typedef  int tagmsg_t ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_INFO ; 
#define  TAG_BADLNO 130 
#define  TAG_EMPTY 129 
#define  TAG_SEARCH 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 

void
FUNC3(SCR *sp, tagmsg_t msg, char *tag)
{
	switch (msg) {
	case TAG_BADLNO:
		FUNC2(sp, M_ERR, tag,
	    "164|%s: the tag's line number is past the end of the file");
		break;
	case TAG_EMPTY:
		FUNC1(sp, M_INFO, "165|The tags stack is empty");
		break;
	case TAG_SEARCH:
		FUNC2(sp, M_ERR, tag, "166|%s: search pattern not found");
		break;
	default:
		FUNC0();
	}
}