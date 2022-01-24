#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {char* spa_name; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_1__* spa ; 
 TYPE_1__* FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  zfsmount ; 

__attribute__((used)) static int
FUNC6(char *dsname)
{
    uint64_t newroot;
    spa_t *newspa;
    char *q;

    q = FUNC2(dsname, '/');
    if (q)
	*q++ = '\0';
    newspa = FUNC1(dsname);
    if (newspa == NULL) {
	FUNC0("\nCan't find ZFS pool %s\n", dsname);
	return -1;
    }

    if (FUNC5(newspa))
	return -1;

    newroot = 0;
    if (q) {
	if (FUNC3(newspa, q, &newroot)) {
	    FUNC0("\nCan't find dataset %s in ZFS pool %s\n",
		    q, newspa->spa_name);
	    return -1;
	}
    }
    if (FUNC4(newspa, newroot, &zfsmount)) {
	FUNC0("\nCan't mount ZFS dataset\n");
	return -1;
    }
    spa = newspa;
    return (0);
}