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
typedef  int /*<<< orphan*/  sv_data ;

/* Variables and functions */
 int NTPQ_BUFLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (char*,size_t,char const*,char*,size_t) ; 
 size_t FUNC2 (char*,int) ; 

size_t
FUNC3(
	const char *	variable,
	char *		value,
	size_t		valuesize
	)
{
	size_t	sv_len;
	char	sv_data[NTPQ_BUFLEN];
	
	FUNC0(sv_data, 0, sizeof(sv_data));
	sv_len = FUNC2(sv_data, sizeof(sv_data));

	if (0 == sv_len)
		return 0;
	else
		return FUNC1(sv_data, sv_len, variable, value,
				   valuesize);
}