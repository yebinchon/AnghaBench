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
typedef  int smsg_t ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int /*<<< orphan*/  M_ERR ; 
#define  S_EMPTY 133 
#define  S_EOF 132 
#define  S_NOPREV 131 
#define  S_NOTFOUND 130 
#define  S_SOF 129 
#define  S_WRAP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(
	SCR *sp,
	smsg_t msg)
{
	switch (msg) {
	case S_EMPTY:
		FUNC1(sp, M_ERR, "072|File empty; nothing to search");
		break;
	case S_EOF:
		FUNC1(sp, M_ERR,
		    "073|Reached end-of-file without finding the pattern");
		break;
	case S_NOPREV:
		FUNC1(sp, M_ERR, "074|No previous search pattern");
		break;
	case S_NOTFOUND:
		FUNC1(sp, M_ERR, "075|Pattern not found");
		break;
	case S_SOF:
		FUNC1(sp, M_ERR,
		    "076|Reached top-of-file without finding the pattern");
		break;
	case S_WRAP:
		FUNC1(sp, M_ERR, "077|Search wrapped");
		break;
	default:
		FUNC0();
	}
}