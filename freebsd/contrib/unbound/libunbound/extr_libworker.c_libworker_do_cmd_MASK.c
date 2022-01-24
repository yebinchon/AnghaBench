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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct libworker {int /*<<< orphan*/  base; } ;

/* Variables and functions */
#define  UB_LIBCMD_ANSWER 131 
#define  UB_LIBCMD_CANCEL 130 
#define  UB_LIBCMD_NEWQUERY 129 
#define  UB_LIBCMD_QUIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct libworker*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct libworker*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(struct libworker* w, uint8_t* msg, uint32_t len)
{
	switch(FUNC1(msg, len)) {
		default:
		case UB_LIBCMD_ANSWER:
			FUNC5("unknown command for bg worker %d", 
				(int)FUNC1(msg, len));
			/* and fall through to quit */
			/* fallthrough */
		case UB_LIBCMD_QUIT:
			FUNC2(msg);
			FUNC0(w->base);
			break;
		case UB_LIBCMD_NEWQUERY:
			FUNC4(w, msg, len);
			break;
		case UB_LIBCMD_CANCEL:
			FUNC3(w, msg, len);
			break;
	}
}