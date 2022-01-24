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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct efi_var_ioc {int datasize; int /*<<< orphan*/  name; int /*<<< orphan*/  attrib; int /*<<< orphan*/ * data; int /*<<< orphan*/  vendor; int /*<<< orphan*/  namesize; } ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EFIIOC_VAR_GET ; 
 int /*<<< orphan*/  efi_fd ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct efi_var_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct efi_var_ioc*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC6(efi_guid_t guid, const char *name,
    uint8_t **data, size_t *data_size, uint32_t *attributes)
{
	struct efi_var_ioc var;
	int rv;
	static uint8_t buf[1024*32];

	if (FUNC0() == -1)
		return -1;

	FUNC1(&var);
	rv = FUNC5(name, &var.name, &var.namesize);
	if (rv != 0)
		goto errout;
	var.vendor = guid;
	var.data = buf;
	var.datasize = sizeof(buf);
	rv = FUNC3(efi_fd, EFIIOC_VAR_GET, &var);
	if (data_size != NULL)
		*data_size = var.datasize;
	if (data != NULL)
		*data = buf;
	if (attributes != NULL)
		*attributes = var.attrib;
errout:
	FUNC2(var.name);

	return FUNC4(rv);
}