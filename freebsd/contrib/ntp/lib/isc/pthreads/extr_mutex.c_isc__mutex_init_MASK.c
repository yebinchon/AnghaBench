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
typedef  int /*<<< orphan*/  strbuf ;
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  isc_mutex_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_R_UNEXPECTED ; 
 int ISC_STRERRORSIZE ; 
 int /*<<< orphan*/  ISC__MUTEX_ATTRS ; 
 int /*<<< orphan*/  FUNC0 (char const*,unsigned int,char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

isc_result_t
FUNC3(isc_mutex_t *mp, const char *file, unsigned int line) {
	char strbuf[ISC_STRERRORSIZE];
	isc_result_t result = ISC_R_SUCCESS;
	int err;

	err = FUNC2(mp, ISC__MUTEX_ATTRS);
	if (err == ENOMEM)
		return (ISC_R_NOMEMORY);
	if (err != 0) {
		FUNC1(errno, strbuf, sizeof(strbuf));
		FUNC0(file, line, "isc_mutex_init() failed: %s",
				 strbuf);
		result = ISC_R_UNEXPECTED;
	}
	return (result);
}