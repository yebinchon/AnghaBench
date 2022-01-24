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
struct TYPE_5__ {size_t gl_pathc; int /*<<< orphan*/ * gl_pathv; int /*<<< orphan*/  gl_lstat; int /*<<< orphan*/  gl_stat; int /*<<< orphan*/  gl_closedir; int /*<<< orphan*/  gl_readdir; int /*<<< orphan*/  gl_opendir; } ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  gl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int GLOB_ALTDIRFUNC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gl_closedir ; 
 int /*<<< orphan*/  gl_lstat ; 
 int /*<<< orphan*/  gl_opendir ; 
 int /*<<< orphan*/  gl_readdir ; 
 int /*<<< orphan*/  gl_stat ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(const char *p, int flags, const char **res, size_t len)
{
	glob_t gl;
	size_t i;

	FUNC6(&gl, 0, sizeof(gl));
	gl.gl_opendir = gl_opendir;
	gl.gl_readdir = gl_readdir;
	gl.gl_closedir = gl_closedir;
	gl.gl_stat = gl_stat;
	gl.gl_lstat = gl_lstat;

	FUNC3(FUNC4(p, GLOB_ALTDIRFUNC | flags, NULL, &gl));

	for (i = 0; i < gl.gl_pathc; i++)
		FUNC2(("%s\n", gl.gl_pathv[i]));

	FUNC0(len == gl.gl_pathc);
	for (i = 0; i < gl.gl_pathc; i++)
		FUNC1(gl.gl_pathv[i], res[i]);

	FUNC5(&gl);
}