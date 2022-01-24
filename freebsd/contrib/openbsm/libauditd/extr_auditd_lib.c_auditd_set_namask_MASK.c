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
typedef  int /*<<< orphan*/  aumask ;
typedef  int /*<<< orphan*/  au_mask_t ;

/* Variables and functions */
 int ADE_AUDITON ; 
 int ADE_NOERR ; 
 int ADE_PARSE ; 
 int NA_EVENT_STR_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 

int
FUNC3(void)
{
	au_mask_t aumask;
	char naeventstr[NA_EVENT_STR_SIZE];

	if (FUNC1(naeventstr, NA_EVENT_STR_SIZE) != 0 ||
	    FUNC2(naeventstr, &aumask) != 0)
		return (ADE_PARSE);

	if (FUNC0(&aumask, sizeof(aumask)) != 0)
		return (ADE_AUDITON);

	return (ADE_NOERR);
}