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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXDNAME ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 

const u_char *
FUNC3(const u_char *cp, const u_char *msg, int len, FILE *file) {
	char name[MAXDNAME];
	int n;

	if ((n = FUNC0(msg, msg + len, cp, name, sizeof name)) < 0)
		return (NULL);
	if (name[0] == '\0')
		FUNC2('.', file);
	else
		FUNC1(name, file);
	return (cp + n);
}