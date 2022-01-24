#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VICMD ;
struct TYPE_9__ {char* alt_name; } ;
typedef  TYPE_1__ SCR ;
typedef  int /*<<< orphan*/  EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  C_EDIT ; 
 int /*<<< orphan*/  FS_ALL ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  OOBLNO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC7(SCR *sp, VICMD *vp)
{
	EXCMD cmd;
	char *name;
	CHAR_T *wp;
	size_t wlen;

	/*
	 * Try the alternate file name, then the previous file
	 * name.  Use the real name, not the user's current name.
	 */
	if ((name = sp->alt_name) == NULL) {
		FUNC4(sp, M_ERR, "180|No previous file to edit");
		return (1);
	}

	/* If autowrite is set, write out the file. */
	if (FUNC3(sp, 0, FS_ALL))
		return (1);

	FUNC2(sp, &cmd, C_EDIT, 0, OOBLNO, OOBLNO, 0);
	FUNC0(sp, name, FUNC5(name) + 1, wp, wlen);
	FUNC1(sp, &cmd, wp, wlen);
	return (FUNC6(sp, vp, &cmd));
}