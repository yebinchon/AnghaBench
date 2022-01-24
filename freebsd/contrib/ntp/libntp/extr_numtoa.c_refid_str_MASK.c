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
typedef  int /*<<< orphan*/  u_int32 ;
typedef  int /*<<< orphan*/  refid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*) ; 

const char *
FUNC4(
	u_int32	refid,
	int	stratum
	)
{
	char *	text;
	size_t	tlen;

	if (stratum > 1)
		return FUNC2(refid);

	FUNC0(text);
	text[0] = '.';
	FUNC1(&text[1], &refid, sizeof(refid));
	text[1 + sizeof(refid)] = '\0';
	tlen = FUNC3(text);
	text[tlen] = '.';
	text[tlen + 1] = '\0';

	return text;
}