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
struct iovec {int dummy; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 char const* ENCODING_UNICODE ; 
 int KICONV_FROM_UPPER ; 
 int KICONV_LOWER ; 
 int /*<<< orphan*/  FUNC0 (struct iovec**,int*,char*,char const*) ; 
 scalar_t__ errno ; 
 int FUNC1 (char const*,char const*,int) ; 
 int FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(struct iovec **iov, int *iovlen, const char *cs_local, const char *cs_dos)
{
	int error;

	if (FUNC4("msdosfs_iconv") < 0)
		if (FUNC3("msdosfs_iconv") < 0 || FUNC4("msdosfs_iconv") < 0) {
			FUNC5("cannot find or load \"msdosfs_iconv\" kernel module");
			return (-1);
		}

	FUNC0(iov, iovlen, "cs_win", ENCODING_UNICODE);
	error = FUNC2(ENCODING_UNICODE, cs_local);
	if (error && errno != EEXIST)
		return (-1);
	if (cs_dos != NULL) {
		error = FUNC2(cs_dos, cs_local);
		if (error && errno != EEXIST)
			return (-1);
	} else {
		FUNC0(iov, iovlen, "cs_dos", cs_local);
		error = FUNC1(cs_local, cs_local,
				KICONV_FROM_UPPER | KICONV_LOWER);
		if (error && errno != EEXIST)
			return (-1);
	}

	return (0);
}