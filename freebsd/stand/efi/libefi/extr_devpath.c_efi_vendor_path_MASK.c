#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {char** VendorDefinedData; } ;
typedef  TYPE_1__ VENDOR_DEVICE_PATH_WITH_DATA ;
struct TYPE_5__ {int /*<<< orphan*/  Header; int /*<<< orphan*/  Guid; } ;
typedef  TYPE_2__ VENDOR_DEVICE_PATH ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char**,char*,char const*,char*,...) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int uuid_s_ok ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,char**,int*) ; 

__attribute__((used)) static char *
FUNC5(const char *type, VENDOR_DEVICE_PATH *node, char *suffix)
{
	uint32_t size = FUNC0(&node->Header) - sizeof(*node);
	VENDOR_DEVICE_PATH_WITH_DATA *dp = (VENDOR_DEVICE_PATH_WITH_DATA *)node;
	char *name, *tail, *head;
	char *uuid;
	int rv;

	FUNC4((const uuid_t *)(void *)&node->Guid, &uuid, &rv);
	if (rv != uuid_s_ok)
		return (NULL);

	tail = FUNC2(suffix);
	rv = FUNC1(&head, "%sVendor(%s)[%lx:", type, uuid, size);
	FUNC3(uuid);
	if (rv < 0)
		return (NULL);

	if (FUNC0(&node->Header) > sizeof(*node)) {
		for (uint32_t i = 0; i < size; i++) {
			rv = FUNC1(&name, "%s%2s", head,
			    dp->VendorDefinedData[i]);
			if (rv < 0) {
				FUNC3(tail);
				FUNC3(head);
				return (NULL);
			}
			FUNC3(head);
			head = name;
		}
	}

	if (FUNC1(&name, "%s]%s", head, tail) < 0)
		name = NULL;
	FUNC3(head);
	FUNC3(tail);
	return (name);
}