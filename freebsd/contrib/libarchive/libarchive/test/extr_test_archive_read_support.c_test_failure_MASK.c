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
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  (* enabler ) (struct archive*) ;
typedef  int /*<<< orphan*/  (* destructor ) (struct archive*) ;
typedef  struct archive* (* constructor ) () ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/ * FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(constructor new_, enabler enable_, destructor free_)
{
	struct archive *a = new_();
	FUNC3(a, ARCHIVE_FATAL, enable_(a));
	FUNC2(NULL != FUNC1(a));
	FUNC3(a, -1, FUNC0(a));
	free_(a);
}