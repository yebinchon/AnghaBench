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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(
	const char *tag,
	u_long uval
	)
{
	char buffer[24]; /* needs to fit for 64 bits! */
	int  rc;

	rc = FUNC2(buffer, sizeof(buffer), "%lu", uval);
	FUNC0(rc >= 0 && (size_t)rc < sizeof(buffer));
	FUNC1(tag, buffer, rc);
}