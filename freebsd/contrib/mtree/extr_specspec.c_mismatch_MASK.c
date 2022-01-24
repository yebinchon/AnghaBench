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
typedef  int /*<<< orphan*/  NODE ;

/* Variables and functions */
 int keys ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static int
FUNC2(NODE *n1, NODE *n2, int differ, char const *path)
{

	if (n2 == NULL) {
		FUNC1(n1, differ, path);
		return (1);
	}
	if (n1 == NULL) {
		FUNC0("\t");
		FUNC1(n2, differ, path);
		return (1);
	}
	if (!(differ & keys))
		return(0);
	FUNC0("\t\t");
	FUNC1(n1, differ, path);
	FUNC0("\t\t");
	FUNC1(n2, differ, path);
	return (1);
}