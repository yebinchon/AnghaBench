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
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int AE_IFDIR ; 
 int FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(struct archive_entry *ae)
{
	FUNC7(FUNC0(ae), AE_IFDIR);
	FUNC7(FUNC4(ae), 1131430878);
	FUNC7(FUNC3(ae) & 0777, 0755);
	FUNC7(FUNC5(ae), 1000);
	FUNC7(FUNC1(ae), 1000);
	FUNC8(FUNC6(ae), "tim");
	FUNC8(FUNC2(ae), "tim");
}