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
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int LS_DIR_FLAG ; 
 int FUNC0 (char**,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char**,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const**,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (char**,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int
FUNC9(FILE *out, const char *directory, int flags)
{
    DIR *d = FUNC5(directory);
    struct dirent *ent;
    char **files = NULL;
    int n_files = 0;
    int ret;

    if(d == NULL) {
	FUNC8(LOG_ERR, "%s: %m", directory);
	return -1;
    }
    while((ent = FUNC6(d)) != NULL) {
	void *tmp;

	if(FUNC3(ent->d_name, flags))
	    continue;
	tmp = FUNC7(files, (n_files + 1) * sizeof(*files));
	if (tmp == NULL) {
	    FUNC8(LOG_ERR, "%s: out of memory", directory);
	    FUNC2 (files, n_files);
	    FUNC1 (d);
	    return -1;
	}
	files = tmp;
	ret = FUNC0(&files[n_files], "%s/%d", directory, ent->d_name);
	if (ret == -1) {
	    FUNC8(LOG_ERR, "%s: out of memory", directory);
	    FUNC2 (files, n_files);
	    FUNC1 (d);
	    return -1;
	}
	++n_files;
    }
    FUNC1(d);
    return FUNC4(out, (const char**)files, n_files, flags | LS_DIR_FLAG);
}