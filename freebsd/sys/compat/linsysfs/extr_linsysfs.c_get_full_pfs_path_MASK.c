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
struct pfs_node {char* pn_name; struct pfs_node* pn_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static char *
FUNC5(struct pfs_node *cur)
{
	char *temp, *path;

	temp = FUNC1(MAXPATHLEN, M_TEMP, M_WAITOK);
	path = FUNC1(MAXPATHLEN, M_TEMP, M_WAITOK);
	path[0] = '\0';

	do {
		FUNC2(temp, MAXPATHLEN, "%s/%s", cur->pn_name, path);
		FUNC3(path, temp, MAXPATHLEN);
		cur = cur->pn_parent;
	} while (cur->pn_parent != NULL);

	path[FUNC4(path) - 1] = '\0'; /* remove extra slash */
	FUNC0(temp, M_TEMP);
	return (path);
}