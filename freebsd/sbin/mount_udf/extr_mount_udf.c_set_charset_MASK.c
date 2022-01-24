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

/* Variables and functions */
 char const* ENCODING_UNICODE ; 
 int /*<<< orphan*/  ICONV_CSNMAXLEN ; 
 int FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(char **cs_disk, char **cs_local, const char *localcs)
{
	int error;

	if (FUNC3("udf_iconv") < 0)
		if (FUNC1("udf_iconv") < 0 || FUNC3("udf_iconv") < 0) {
			FUNC5( "cannot find or load \"udf_iconv\" kernel module");
			return (-1);
		}

	if ((*cs_disk = FUNC2(ICONV_CSNMAXLEN)) == NULL)
		return (-1);
	if ((*cs_local = FUNC2(ICONV_CSNMAXLEN)) == NULL)
		return (-1);
	FUNC4(*cs_disk, ENCODING_UNICODE, ICONV_CSNMAXLEN);
	FUNC4(*cs_local, localcs, ICONV_CSNMAXLEN);
	error = FUNC0(*cs_disk, *cs_local);
	if (error)
		return (-1);

	return (0);
}