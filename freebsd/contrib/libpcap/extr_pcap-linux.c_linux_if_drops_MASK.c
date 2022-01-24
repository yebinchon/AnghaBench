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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char*,char const*) ; 
 long FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static long int
FUNC6(const char * if_name)
{
	char buffer[512];
	char * bufptr;
	FILE * file;
	int field_to_convert = 3, if_name_sz = FUNC3(if_name);
	long int dropped_pkts = 0;

	file = FUNC2("/proc/net/dev", "r");
	if (!file)
		return 0;

	while (!dropped_pkts && FUNC1( buffer, sizeof(buffer), file ))
	{
		/* 	search for 'bytes' -- if its in there, then
			that means we need to grab the fourth field. otherwise
			grab the third field. */
		if (field_to_convert != 4 && FUNC4(buffer, "bytes"))
		{
			field_to_convert = 4;
			continue;
		}

		/* find iface and make sure it actually matches -- space before the name and : after it */
		if ((bufptr = FUNC4(buffer, if_name)) &&
			(bufptr == buffer || *(bufptr-1) == ' ') &&
			*(bufptr + if_name_sz) == ':')
		{
			bufptr = bufptr + if_name_sz + 1;

			/* grab the nth field from it */
			while( --field_to_convert && *bufptr != '\0')
			{
				while (*bufptr != '\0' && *(bufptr++) == ' ');
				while (*bufptr != '\0' && *(bufptr++) != ' ');
			}

			/* get rid of any final spaces */
			while (*bufptr != '\0' && *bufptr == ' ') bufptr++;

			if (*bufptr != '\0')
				dropped_pkts = FUNC5(bufptr, NULL, 10);

			break;
		}
	}

	FUNC0(file);
	return dropped_pkts;
}