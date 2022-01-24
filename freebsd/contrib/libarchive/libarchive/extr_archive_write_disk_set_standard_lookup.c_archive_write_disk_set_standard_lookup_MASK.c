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
struct bucket {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,struct bucket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,struct bucket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cache_size ; 
 struct bucket* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC3 (struct bucket*) ; 
 int /*<<< orphan*/  lookup_gid ; 
 int /*<<< orphan*/  lookup_uid ; 

int
FUNC4(struct archive *a)
{
	struct bucket *ucache = FUNC2(cache_size, sizeof(struct bucket));
	struct bucket *gcache = FUNC2(cache_size, sizeof(struct bucket));
	if (ucache == NULL || gcache == NULL) {
		FUNC3(ucache);
		FUNC3(gcache);
		return (ARCHIVE_FATAL);
	}
	FUNC0(a, gcache, lookup_gid, cleanup);
	FUNC1(a, ucache, lookup_uid, cleanup);
	return (ARCHIVE_OK);
}