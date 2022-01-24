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
struct devinfo_dev {char* dd_name; int dd_flags; char* dd_location; char* dd_pnpinfo; int /*<<< orphan*/  dd_parent; } ;

/* Variables and functions */
 int DF_ATTACHED_ONCE ; 
 int DF_ENABLED ; 
 int /*<<< orphan*/  all_flag ; 
 int FUNC0 (struct devinfo_dev*,int (*) (struct devinfo_dev*,void*),void*) ; 
 struct devinfo_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 scalar_t__ verbose_flag ; 

__attribute__((used)) static int
FUNC8(struct devinfo_dev *dev, void *arg)
{
	struct devinfo_dev *parent;
	char *bus, *p;

	do {
		if (!all_flag && dev->dd_name[0] != '\0')
			break;
		if (!(dev->dd_flags & DF_ENABLED))
			break;
		if (dev->dd_flags & DF_ATTACHED_ONCE)
			break;
		parent = FUNC1(dev->dd_parent);
		bus = FUNC6(parent->dd_name);
		p = bus + FUNC7(bus) - 1;
		while (p >= bus && FUNC3(*p))
			p--;
		*++p = '\0';
		if (verbose_flag)
			FUNC4("Searching %s %s bus at %s for pnpinfo %s\n",
			    dev->dd_name, bus, dev->dd_location, dev->dd_pnpinfo);
		FUNC5(bus, dev->dd_name, dev->dd_pnpinfo);
		FUNC2(bus);
	} while (0);

	return (FUNC0(dev, find_unmatched, arg));
}