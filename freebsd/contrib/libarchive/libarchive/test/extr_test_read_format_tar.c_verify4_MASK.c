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
 int AE_IFBLK ; 
 int FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC7 (struct archive_entry*) ; 
 int FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC13(struct archive_entry *ae)
{
	FUNC11(FUNC0(ae), AE_IFBLK);
	FUNC11(FUNC4(ae) & 0777, 0755);
	FUNC11(FUNC8(ae), 1000);
	FUNC11(FUNC1(ae), 1000);
	FUNC12(FUNC9(ae), "tim");
	FUNC12(FUNC2(ae), "tim");
	FUNC12(FUNC6(ae), "devblock");
	FUNC10(FUNC7(ae) == NULL);
	FUNC10(FUNC3(ae) == NULL);
	FUNC11(FUNC5(ae), 1184389185);
}