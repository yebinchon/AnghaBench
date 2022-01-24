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
struct req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FOCUS_QUERY ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct req const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const struct req *req, const char *msg)
{
	FUNC1(200, NULL, NULL);
	FUNC3(req, FOCUS_QUERY);
	FUNC0("<p>");
	FUNC0(msg);
	FUNC0("</p>");
	FUNC2();
}