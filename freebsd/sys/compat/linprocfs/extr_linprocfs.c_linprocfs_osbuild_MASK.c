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
struct thread {int dummy; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static void
FUNC4(struct thread *td, struct sbuf *sb)
{
#if 0
	char osbuild[256];
	char *cp1, *cp2;

	strncpy(osbuild, version, 256);
	osbuild[255] = '\0';
	cp1 = strstr(osbuild, "\n");
	cp2 = strstr(osbuild, ":");
	if (cp1 && cp2) {
		*cp1 = *cp2 = '\0';
		cp1 = strstr(osbuild, "#");
	} else
		cp1 = NULL;
	if (cp1)
		sbuf_printf(sb, "%s%s", cp1, cp2 + 1);
	else
#endif
		FUNC0(sb, "#4 Sun Dec 18 04:30:00 CET 1977");
}