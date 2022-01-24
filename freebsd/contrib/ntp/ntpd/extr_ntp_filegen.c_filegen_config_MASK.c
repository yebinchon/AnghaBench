#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  void* u_char ;
struct TYPE_6__ {int /*<<< orphan*/  l_ui; } ;
typedef  TYPE_1__ l_fp ;
struct TYPE_7__ {char const* dir; char const* fname; scalar_t__ type; scalar_t__ flag; int /*<<< orphan*/ * fp; } ;
typedef  TYPE_2__ FILEGEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FALSE ; 
 int TRUE ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 

void
FUNC8(
	FILEGEN *	gen,
	const char *	dir,
	const char *	fname,
	u_int		type,
	u_int		flag
	)
{
	int file_existed;
	l_fp now;


	/*
	 * if nothing would be changed...
	 */
	if (FUNC6(dir, gen->dir) == 0 && FUNC6(fname, gen->fname) == 0
	    && type == gen->type && flag == gen->flag)
		return;

	/*
	 * validate parameters
	 */
	if (!FUNC7(dir, fname))
		return;
  
	if (NULL != gen->fp) {
		FUNC2(gen->fp);
		gen->fp = NULL;
		file_existed = TRUE;
	} else {
		file_existed = FALSE;
	}

	FUNC0(3, ("configuring filegen:\n"
		    "\tdir:\t%s -> %s\n"
		    "\tfname:\t%s -> %s\n"
		    "\ttype:\t%d -> %d\n"
		    "\tflag: %x -> %x\n",
		    gen->dir, dir,
		    gen->fname, fname,
		    gen->type, type,
		    gen->flag, flag));

	if (FUNC6(gen->dir, dir) != 0) {
		FUNC4(gen->dir);
		gen->dir = FUNC1(dir);
	}

	if (FUNC6(gen->fname, fname) != 0) {
		FUNC4(gen->fname);
		gen->fname = FUNC1(fname);
	}
	gen->type = (u_char)type;
	gen->flag = (u_char)flag;

	/*
	 * make filegen use the new settings
	 * special action is only required when a generation file
	 * is currently open
	 * otherwise the new settings will be used anyway at the next open
	 */
	if (file_existed) {
		FUNC5(&now);
		FUNC3(gen, now.l_ui);
	}
}