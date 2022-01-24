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
struct efi_var_ioc {size_t namesize; int /*<<< orphan*/  vendor; scalar_t__* name; } ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  scalar_t__ efi_char ;

/* Variables and functions */
 int /*<<< orphan*/  EFIIOC_VAR_NEXT ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  efi_fd ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct efi_var_ioc*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct efi_var_ioc*) ; 
 scalar_t__* FUNC4 (size_t) ; 
 void* FUNC5 (scalar_t__*,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (scalar_t__*,char**) ; 
 int FUNC8 (char*,scalar_t__**,size_t*) ; 

int
FUNC9(efi_guid_t **guid, char **name)
{
	struct efi_var_ioc var;
	int rv;
	static efi_char *buf;
	static size_t buflen = 256 * sizeof(efi_char);
	static efi_guid_t retguid;
	size_t size;

	if (FUNC0() == -1)
		return -1;

	/*
	 * Always allocate enough for an extra NUL on the end, but don't tell
	 * the IOCTL about it so we can NUL terminate the name before converting
	 * it to UTF8.
	 */
	if (buf == NULL)
		buf = FUNC4(buflen + sizeof(efi_char));

again:
	FUNC1(&var);
	var.name = buf;
	var.namesize = buflen;
	if (*name == NULL) {
		*buf = 0;
		/* GUID zeroed in var_reset */
	} else {
		rv = FUNC8(*name, &var.name, &size);
		if (rv != 0)
			goto errout;
		var.vendor = **guid;
	}
	rv = FUNC3(efi_fd, EFIIOC_VAR_NEXT, &var);
	if (rv == 0 && var.name == NULL) {
		/*
		 * Variable name not long enough, so allocate more space for the
		 * name and try again. As above, mind the NUL we add.
		 */
		void *new = FUNC5(buf, var.namesize + sizeof(efi_char));
		if (new == NULL) {
			rv = -1;
			errno = ENOMEM;
			goto done;
		}
		buflen = var.namesize;
		buf = new;
		goto again;
	}

	if (rv == 0) {
		FUNC2(*name);			/* Free last name, to avoid leaking */
		*name = NULL;			/* Force ucs2_to_utf8 to malloc new space */
		var.name[var.namesize / sizeof(efi_char)] = 0;	/* EFI doesn't NUL terminate */
		rv = FUNC7(var.name, name);
		if (rv != 0)
			goto errout;
		retguid = var.vendor;
		*guid = &retguid;
	}
errout:

	/* XXX The linux interface expects name to be a static buffer -- fix or leak memory? */
	/* XXX for the moment, we free just before we'd leak, but still leak last one */
done:
	if (rv != 0 && errno == ENOENT) {
		errno = 0;
		FUNC2(*name);			/* Free last name, to avoid leaking */
		return 0;
	}

	return (FUNC6(rv));
}