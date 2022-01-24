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
typedef  int /*<<< orphan*/  token_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ipc_id ; 
 int /*<<< orphan*/  ipc_type ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(const char *directory, const char *token_filename)
{
	token_t *ipc_token;

	ipc_token = FUNC0(ipc_type, ipc_id);
	if (ipc_token == NULL)
		FUNC1(EX_UNAVAILABLE, "au_to_ipc");
	FUNC2(directory, token_filename, ipc_token);
}