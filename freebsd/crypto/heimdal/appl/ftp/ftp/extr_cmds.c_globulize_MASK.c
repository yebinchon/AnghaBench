#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ gl_pathc; int /*<<< orphan*/ * gl_pathv; } ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  gl ;

/* Variables and functions */
 int GLOB_BRACE ; 
 int GLOB_NOCHECK ; 
 int GLOB_QUOTE ; 
 int GLOB_TILDE ; 
 int /*<<< orphan*/  doglob ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int
FUNC5(char **cpp)
{
	glob_t gl;
	int flags;

	if (!doglob)
		return (1);

	flags = GLOB_BRACE|GLOB_NOCHECK|GLOB_QUOTE|GLOB_TILDE;
	FUNC2(&gl, 0, sizeof(gl));
	if (FUNC0(*cpp, flags, NULL, &gl) ||
	    gl.gl_pathc == 0) {
		FUNC4("%s: not found", *cpp);
		FUNC1(&gl);
		return (0);
	}
	*cpp = FUNC3(gl.gl_pathv[0]);	/* XXX - wasted memory */
	FUNC1(&gl);
	return (1);
}