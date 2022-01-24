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
 int /*<<< orphan*/  AUE_NULL ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  arg32_token_n ; 
 int /*<<< orphan*/  arg32_token_text ; 
 int /*<<< orphan*/  arg32_token_v ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(const char *directory, const char *record_filename)
{
	token_t *arg32_token;

	arg32_token = FUNC0(arg32_token_n, arg32_token_text,
	    arg32_token_v);
	if (arg32_token == NULL)
		FUNC1(EX_UNAVAILABLE, "au_to_arg32");
	FUNC2(directory, record_filename, arg32_token, AUE_NULL);
}