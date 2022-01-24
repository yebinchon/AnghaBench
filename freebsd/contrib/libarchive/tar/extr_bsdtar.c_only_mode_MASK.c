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
struct bsdtar {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bsdtar *bsdtar, const char *opt, const char *valid_modes)
{
	if (FUNC1(valid_modes, bsdtar->mode) == NULL)
		FUNC0(1, 0,
		    "Option %s is not permitted in mode -%c",
		    opt, bsdtar->mode);
}