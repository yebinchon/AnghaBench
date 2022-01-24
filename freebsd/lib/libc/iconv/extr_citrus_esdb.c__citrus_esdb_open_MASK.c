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
struct _region {int dummy; } ;
struct _citrus_esdb {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;

/* Variables and functions */
 int ENOENT ; 
 char* ESDB_ALIAS ; 
 char* ESDB_DIR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  _LOOKUP_CASE_IGNORE ; 
 char* _PATH_ESDB ; 
 char* FUNC0 (char*,char const*,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char const*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct _region*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct _region*) ; 
 int FUNC4 (struct _citrus_esdb*,struct _region*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char const*) ; 

int
FUNC6(struct _citrus_esdb *db, const char *esname)
{
	struct _region fr;
	const char *realname, *encfile;
	char buf1[PATH_MAX], buf2[PATH_MAX], path[PATH_MAX];
	int ret;

	FUNC5(path, sizeof(path), "%s/%s", _PATH_ESDB, ESDB_ALIAS);
	realname = FUNC0(path, esname, buf1, sizeof(buf1),
	    _LOOKUP_CASE_IGNORE);

	FUNC5(path, sizeof(path), "%s/%s", _PATH_ESDB, ESDB_DIR);
	encfile = FUNC1(path, realname, buf2, sizeof(buf2),
	    _LOOKUP_CASE_IGNORE);
	if (encfile == NULL)
		return (ENOENT);

	/* open file */
	FUNC5(path, sizeof(path), "%s/%s", _PATH_ESDB, encfile);
	ret = FUNC2(&fr, path);
	if (ret)
		return (ret);

	ret = FUNC4(db, &fr);

	FUNC3(&fr);

	return (ret);
}