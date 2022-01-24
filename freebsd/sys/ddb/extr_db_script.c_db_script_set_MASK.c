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
struct ddb_script {int /*<<< orphan*/  ds_script; int /*<<< orphan*/  ds_scriptname; } ;

/* Variables and functions */
 int ENOSPC ; 
 struct ddb_script* FUNC0 (char const*) ; 
 struct ddb_script* FUNC1 () ; 
 int FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC4(const char *scriptname, const char *script)
{
	struct ddb_script *dsp;
	int error;

	error = FUNC2(scriptname, script);
	if (error)
		return (error);
	dsp = FUNC0(scriptname);
	if (dsp == NULL) {
		dsp = FUNC1();
		if (dsp == NULL)
			return (ENOSPC);
		FUNC3(dsp->ds_scriptname, scriptname,
		    sizeof(dsp->ds_scriptname));
	}
	FUNC3(dsp->ds_script, script, sizeof(dsp->ds_script));
	return (0);
}