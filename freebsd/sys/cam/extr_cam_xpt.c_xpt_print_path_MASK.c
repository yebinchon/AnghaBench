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
struct sbuf {int dummy; } ;
struct cam_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int XPT_PRINT_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_path*,struct sbuf*) ; 

void
FUNC6(struct cam_path *path)
{
	struct sbuf sb;
	char buffer[XPT_PRINT_LEN];

	FUNC4(&sb, buffer, XPT_PRINT_LEN, SBUF_FIXEDLEN);
	FUNC5(path, &sb);
	FUNC3(&sb);
	FUNC0("%s", FUNC1(&sb));
	FUNC2(&sb);
}