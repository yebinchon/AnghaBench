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
struct usershell {int /*<<< orphan*/ * path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct usershell *dest, struct usershell const *src)
{
	FUNC0(dest != NULL);
	FUNC0(src != NULL);

	if (src->path != NULL) {
		dest->path = FUNC1(src->path);
		FUNC0(dest->path != NULL);
	}
}