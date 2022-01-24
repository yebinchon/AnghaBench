#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int md_flags; } ;
struct geli_dev {char* name; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  GELI_PW_MAXLEN ; 
 int G_ELI_FLAG_GELIDISPLAYPASS ; 
 scalar_t__ FUNC0 (struct geli_dev*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct geli_dev *gdev, char *pw)
{
	int i;

	/* TODO: Implement GELI keyfile(s) support */
	for (i = 0; i < 3; i++) {
		/* Try cached passphrase */
		if (i == 0 && pw[0] != '\0') {
			if (FUNC0(gdev, pw, NULL) == 0) {
				return (0);
			}
		}
		FUNC1("GELI Passphrase for %s ", gdev->name);
		FUNC2(pw, GELI_PW_MAXLEN,
		    (gdev->md.md_flags & G_ELI_FLAG_GELIDISPLAYPASS) == 0);
		FUNC1("\n");
		if (FUNC0(gdev, pw, NULL) == 0) {
			return (0);
		}
	}

	return (1);
}