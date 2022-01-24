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
typedef  enum argmode { ____Placeholder_argmode } argmode ;

/* Variables and functions */
#define  ARG_EXPR 131 
#define  ARG_FILE 130 
#define  ARG_NAME 129 
#define  ARG_WORD 128 
 scalar_t__ MANDOCLEVEL_BADARG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(enum argmode argmode)
{
	switch (argmode) {
	case ARG_FILE:
		FUNC1("usage: mandoc [-ac] [-I os=name] "
		    "[-K encoding] [-mdoc | -man] [-O options]\n"
		    "\t      [-T output] [-W level] [file ...]\n", stderr);
		break;
	case ARG_NAME:
		FUNC1("usage: man [-acfhklw] [-C file] [-M path] "
		    "[-m path] [-S subsection]\n"
		    "\t   [[-s] section] name ...\n", stderr);
		break;
	case ARG_WORD:
		FUNC1("usage: whatis [-afk] [-C file] "
		    "[-M path] [-m path] [-O outkey] [-S arch]\n"
		    "\t      [-s section] name ...\n", stderr);
		break;
	case ARG_EXPR:
		FUNC1("usage: apropos [-afk] [-C file] "
		    "[-M path] [-m path] [-O outkey] [-S arch]\n"
		    "\t       [-s section] expression ...\n", stderr);
		break;
	}
	FUNC0((int)MANDOCLEVEL_BADARG);
}