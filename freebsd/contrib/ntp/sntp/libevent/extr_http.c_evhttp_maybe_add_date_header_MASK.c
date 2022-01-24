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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct evkeyvalq {int dummy; } ;
typedef  int /*<<< orphan*/  date ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evkeyvalq*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct evkeyvalq*,char*) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tm*) ; 
 scalar_t__ FUNC4 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct evkeyvalq *headers)
{
	if (FUNC1(headers, "Date") == NULL) {
		char date[50];
#ifndef _WIN32
		struct tm cur;
#endif
		struct tm *cur_p;
		time_t t = FUNC5(NULL);
#ifdef _WIN32
		cur_p = gmtime(&t);
#else
		FUNC3(&t, &cur);
		cur_p = &cur;
#endif
		if (FUNC4(date, sizeof(date),
			"%a, %d %b %Y %H:%M:%S GMT", cur_p) != 0) {
			FUNC0(headers, "Date", date);
		}
	}
}