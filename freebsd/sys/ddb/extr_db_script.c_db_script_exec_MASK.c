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
struct ddb_script {int /*<<< orphan*/  ds_scriptname; int /*<<< orphan*/  ds_script; } ;
struct db_recursion_data {char* drd_buffer; } ;
typedef  void* jmp_buf ;

/* Variables and functions */
 size_t DB_MAXSCRIPTRECURSION ; 
 int E2BIG ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 size_t db_recursion ; 
 struct db_recursion_data* db_recursion_data ; 
 struct ddb_script* FUNC3 (char const*) ; 
 void* FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static int
FUNC8(const char *scriptname, int warnifnotfound)
{
	struct db_recursion_data *drd;
	struct ddb_script *dsp;
	char *buffer, *command;
	void *prev_jb;
	jmp_buf jb;

	dsp = FUNC3(scriptname);
	if (dsp == NULL) {
		if (warnifnotfound)
			FUNC2("script '%s' not found\n", scriptname);
		return (ENOENT);
	}

	if (db_recursion >= DB_MAXSCRIPTRECURSION) {
		FUNC2("Script stack too deep\n");
		return (E2BIG);
	}
	db_recursion++;
	drd = &db_recursion_data[db_recursion];

	/*
	 * Parse script in temporary buffer, since strsep() is destructive.
	 */
	buffer = drd->drd_buffer;
	FUNC6(buffer, dsp->ds_script);
	while ((command = FUNC7(&buffer, ";")) != NULL) {
		FUNC2("db:%d:%s> %s\n", db_recursion, dsp->ds_scriptname,
		    command);
		FUNC1(&command);
		prev_jb = FUNC4(jb);
		if (FUNC5(jb) == 0)
			FUNC0(command);
		else
			FUNC2("Script command '%s' returned error\n",
			    command);
		FUNC4(prev_jb);
	}
	db_recursion--;
	return (0);
}