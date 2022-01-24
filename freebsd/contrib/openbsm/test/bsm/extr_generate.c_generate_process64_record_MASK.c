#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  token_t ;
struct TYPE_3__ {int /*<<< orphan*/  machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUE_NULL ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  process64_auid ; 
 int /*<<< orphan*/  process64_egid ; 
 int /*<<< orphan*/  process64_euid ; 
 int /*<<< orphan*/  process64_pid ; 
 int /*<<< orphan*/  process64_rgid ; 
 int /*<<< orphan*/  process64_ruid ; 
 int /*<<< orphan*/  process64_sid ; 
 TYPE_1__ process64_tid ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const char *directory, const char *record_filename)
{
	token_t *process64_token;

	process64_tid.machine = FUNC2("127.0.0.1");

	process64_token = FUNC0(process64_auid, process64_euid,
	    process64_egid, process64_ruid, process64_rgid, process64_pid,
	    process64_sid, &process64_tid);
	if (process64_token == NULL)
		FUNC1(EX_UNAVAILABLE, "au_ti_process64");
	FUNC3(directory, record_filename, process64_token, AUE_NULL);
}