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
typedef  int /*<<< orphan*/  pass_prompt ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

char *
FUNC3(
	int	keytype
	)
{
	char	pass_prompt[64 + 11 + 1]; /* 11 for " Password: " */

	FUNC2(pass_prompt, sizeof(pass_prompt),
		 "%.64s Password: ", FUNC1(keytype));

	return FUNC0(pass_prompt);
}