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
typedef  int /*<<< orphan*/  _HZEncodingInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  root_hints ; 

__attribute__((used)) static int
FUNC6(_HZEncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{
	int errnum;

	FUNC5(ei, 0, sizeof(*ei));
	FUNC2(FUNC0(ei));
	FUNC2(FUNC1(ei));
	errnum = FUNC4(
	    root_hints, (void *)ei, var, lenvar);
	if (errnum != 0)
		FUNC3(ei);
	return (errnum);
}