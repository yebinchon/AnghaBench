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
typedef  int /*<<< orphan*/  suffix ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 char* DBM_SUFFIX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int R_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int W_OK ; 
 int X_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 unsigned int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (size_t) ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char* FUNC12 (char const*) ; 
 int FUNC13 (char const*) ; 

__attribute__((used)) static char *
FUNC14(const char *nominal)
{
    struct stat sb;
#if USE_HASHED_DB
    char suffix[] = DBM_SUFFIX;
    size_t need = strlen(nominal) + sizeof(suffix);
    char *result = malloc(need);

    if (result == 0)
	failed("valid_db_path");
    _nc_STRCPY(result, nominal, need);
    if (strcmp(result + need - sizeof(suffix), suffix)) {
	_nc_STRCAT(result, suffix, need);
    }
#else
    char *result = FUNC12(nominal);
#endif

    FUNC0(1, ("** stat(%s)", result));
    if (FUNC10(result, &sb) >= 0) {
#if USE_HASHED_DB
	if (!S_ISREG(sb.st_mode)
	    || access(result, R_OK | W_OK) != 0) {
	    DEBUG(1, ("...not a writable file"));
	    free(result);
	    result = 0;
	}
#else
	if (!FUNC1(sb.st_mode)
	    || FUNC6(result, R_OK | W_OK | X_OK) != 0) {
	    FUNC0(1, ("...not a writable directory"));
	    FUNC8(result);
	    result = 0;
	}
#endif
    } else {
	/* check if parent is directory and is writable */
	unsigned leaf = FUNC5(result);

	FUNC0(1, ("...not found"));
	if (leaf) {
	    char save = result[leaf];
	    result[leaf] = 0;
	    if (FUNC10(result, &sb) >= 0
		&& FUNC1(sb.st_mode)
		&& FUNC6(result, R_OK | W_OK | X_OK) == 0) {
		result[leaf] = save;
	    } else {
		FUNC0(1, ("...parent directory %s is not writable", result));
		FUNC8(result);
		result = 0;
	    }
	} else {
	    FUNC0(1, ("... no parent directory"));
	    FUNC8(result);
	    result = 0;
	}
    }
    return result;
}