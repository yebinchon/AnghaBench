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
struct TYPE_3__ {int /*<<< orphan*/  absolute; } ;
typedef  TYPE_1__ isc_time_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int _O_BINARY ; 
 int _O_RDONLY ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int) ; 

isc_result_t
FUNC6(const char *file, isc_time_t *time) {
	int fh;

	FUNC1(file != NULL);
	FUNC1(time != NULL);

	if ((fh = FUNC5(file, _O_RDONLY | _O_BINARY)) < 0)
		return (FUNC4(errno));

	if (!FUNC0((HANDLE) FUNC2(fh),
			 NULL,
			 NULL,
			 &time->absolute))
	{
		FUNC3(fh);
		errno = EINVAL;
		return (FUNC4(errno));
	}
	FUNC3(fh);
	return (ISC_R_SUCCESS);
}