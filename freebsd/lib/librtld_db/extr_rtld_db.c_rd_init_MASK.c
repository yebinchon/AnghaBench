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
typedef  int /*<<< orphan*/  rd_err_e ;

/* Variables and functions */
 int /*<<< orphan*/  RD_NOCAPAB ; 
 int /*<<< orphan*/  RD_OK ; 
 int RD_VERSION ; 
 int /*<<< orphan*/  _librtld_db_debug ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 

rd_err_e
FUNC2(int version)
{
	char *debug = NULL;

	if (version == RD_VERSION) {
		debug = FUNC1("LIBRTLD_DB_DEBUG");
		_librtld_db_debug = debug ? FUNC0(debug) : 0;
		return (RD_OK);
	} else
		return (RD_NOCAPAB);
}