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
struct package {int pkg_fd; int /*<<< orphan*/  pkg_zs; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int COMMENT ; 
 int EFTYPE ; 
 int ENOMEM ; 
 int EXTRA_FIELD ; 
 int HEAD_CRC ; 
 int ORIG_NAME ; 
 int RESERVED ; 
 int Z_DEFLATED ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (struct package*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct package*) ; 
 int FUNC2 (struct package*,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct package* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(int fd, struct package **pp)
{
	struct package *pkg;
	off_t ofs;
	int flags, i, error;

	pkg = FUNC4(sizeof(*pkg));
	if (pkg == NULL)
		return (ENOMEM);

	FUNC0(pkg, sizeof(*pkg));
	pkg->pkg_fd = fd;

	/*
	 * Parse the header.
	 */
	error = EFTYPE;
	ofs = 0;

	/* Check megic. */
	if (FUNC2(pkg, &ofs) != 0x1f || FUNC2(pkg, &ofs) != 0x8b)
		goto fail;
	/* Check method. */
	if (FUNC2(pkg, &ofs) != Z_DEFLATED)
		goto fail;
	/* Check flags. */
	flags = FUNC2(pkg, &ofs);
	if (flags & RESERVED)
		goto fail;

	/* Skip time, xflags and OS code. */
	for (i = 0; i < 6; i++) {
		if (FUNC2(pkg, &ofs) == -1)
			goto fail;
	}

	/* Skip extra field. */
	if (flags & EXTRA_FIELD) {
		i = (FUNC2(pkg, &ofs) & 0xff) |
		    ((FUNC2(pkg, &ofs) << 8) & 0xff);
		while (i-- > 0) {
			if (FUNC2(pkg, &ofs) == -1)
				goto fail;
		}
	}

	/* Skip original file name. */
	if (flags & ORIG_NAME) {
		do {
			i = FUNC2(pkg, &ofs);
		} while (i != 0 && i != -1);
		if (i == -1)
			goto fail;
	}

	/* Print the comment if it's there. */
	if (flags & COMMENT) {
		while (1) {
			i = FUNC2(pkg, &ofs);
			if (i == -1)
				goto fail;
			if (i == 0)
				break;
			FUNC5(i);
		}
	}

	/* Skip the CRC. */
	if (flags & HEAD_CRC) {
		if (FUNC2(pkg, &ofs) == -1)
			goto fail;
		if (FUNC2(pkg, &ofs) == -1)
			goto fail;
	}

	/*
	 * Done parsing the ZIP header. Spkgt the inflation engine.
	 */
	error = FUNC3(&pkg->pkg_zs, -15);
	if (error != Z_OK)
		goto fail;

	*pp = pkg;
	return (0);

 fail:
	FUNC1(pkg);
	return (error);
}