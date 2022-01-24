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
struct name_cache {void* size; struct archive* archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,struct name_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,struct name_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC3 (struct name_cache*) ; 
 int /*<<< orphan*/  lookup_gname ; 
 int /*<<< orphan*/  lookup_uname ; 
 struct name_cache* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct name_cache*,int /*<<< orphan*/ ,int) ; 
 void* name_cache_size ; 

int
FUNC6(struct archive *a)
{
	struct name_cache *ucache = FUNC4(sizeof(struct name_cache));
	struct name_cache *gcache = FUNC4(sizeof(struct name_cache));

	if (ucache == NULL || gcache == NULL) {
		FUNC2(a, ENOMEM,
		    "Can't allocate uname/gname lookup cache");
		FUNC3(ucache);
		FUNC3(gcache);
		return (ARCHIVE_FATAL);
	}

	FUNC5(ucache, 0, sizeof(*ucache));
	ucache->archive = a;
	ucache->size = name_cache_size;
	FUNC5(gcache, 0, sizeof(*gcache));
	gcache->archive = a;
	gcache->size = name_cache_size;

	FUNC0(a, gcache, lookup_gname, cleanup);
	FUNC1(a, ucache, lookup_uname, cleanup);

	return (ARCHIVE_OK);
}