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
 int /*<<< orphan*/  process32_auid ; 
 int /*<<< orphan*/  process32_egid ; 
 int /*<<< orphan*/  process32_euid ; 
 int /*<<< orphan*/  process32_pid ; 
 int /*<<< orphan*/  process32_rgid ; 
 int /*<<< orphan*/  process32_ruid ; 
 int /*<<< orphan*/  process32_sid ; 
 TYPE_1__ process32_tid ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const char *directory, const char *record_filename)
{
	token_t *process32_token;

	process32_tid.machine = FUNC2("127.0.0.1");

	process32_token = FUNC0(process32_auid, process32_euid,
	    process32_egid, process32_ruid, process32_rgid, process32_pid,
	    process32_sid, &process32_tid);
	if (process32_token == NULL)
		FUNC1(EX_UNAVAILABLE, "au_ti_process32");
	FUNC3(directory, record_filename, process32_token, AUE_NULL);
}