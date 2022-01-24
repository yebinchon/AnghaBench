#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_result_t ;
struct TYPE_11__ {scalar_t__ type; } ;
typedef  TYPE_2__ isc_logchannel_t ;
struct TYPE_10__ {size_t length; char* name; } ;
struct TYPE_12__ {TYPE_1__ entry; } ;
typedef  TYPE_3__ isc_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (TYPE_2__*) ; 
 scalar_t__ ISC_LOG_TOFILE ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,char const*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 size_t FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,size_t) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (char*,char**,int) ; 

__attribute__((used)) static isc_result_t
FUNC11(isc_logchannel_t *channel, int *greatestp) {
	/* XXXDCL HIGHLY NT */
	char *basenam, *digit_end;
	const char *dirname;
	int version, greatest = -1;
	size_t basenamelen;
	isc_dir_t dir;
	isc_result_t result;
	char sep = '/';
#ifdef _WIN32
	char *basename2;
#endif

	FUNC2(channel->type == ISC_LOG_TOFILE);

	/*
	 * It is safe to DE_CONST the file.name because it was copied
	 * with isc_mem_strdup in isc_log_createchannel.
	 */
	basenam = FUNC9(FUNC1(channel), sep);
#ifdef _WIN32
	basename2 = strrchr(FILE_NAME(channel), '\\');
	if ((basenam != NULL && basename2 != NULL && basename2 > basenam) ||
	    (basenam == NULL && basename2 != NULL)) {
		basenam = basename2;
		sep = '\\';
	}
#endif
	if (basenam != NULL) {
		*basenam++ = '\0';
		dirname = FUNC1(channel);
	} else {
		FUNC0(FUNC1(channel), basenam);
		dirname = ".";
	}
	basenamelen = FUNC7(basenam);

	FUNC4(&dir);
	result = FUNC5(&dir, dirname);

	/*
	 * Replace the file separator if it was taken out.
	 */
	if (basenam != FUNC1(channel))
		*(basenam - 1) = sep;

	/*
	 * Return if the directory open failed.
	 */
	if (result != ISC_R_SUCCESS)
		return (result);

	while (FUNC6(&dir) == ISC_R_SUCCESS) {
		if (dir.entry.length > basenamelen &&
		    FUNC8(dir.entry.name, basenam, basenamelen) == 0 &&
		    dir.entry.name[basenamelen] == '.') {

			version = FUNC10(&dir.entry.name[basenamelen + 1],
					 &digit_end, 10);
			if (*digit_end == '\0' && version > greatest)
				greatest = version;
		}
	}
	FUNC3(&dir);

	*greatestp = ++greatest;

	return (ISC_R_SUCCESS);
}