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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct pt_section {scalar_t__ offset; scalar_t__ size; int /*<<< orphan*/  memsize; int /*<<< orphan*/  read; int /*<<< orphan*/  unmap; struct pt_sec_windows_mapping* mapping; } ;
struct pt_sec_windows_mapping {int fd; int /*<<< orphan*/ * end; int /*<<< orphan*/ * begin; int /*<<< orphan*/ * base; scalar_t__ mh; } ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 struct pt_sec_windows_mapping* FUNC6 (int) ; 
 int /*<<< orphan*/  pt_sec_windows_memsize ; 
 int /*<<< orphan*/  pt_sec_windows_read ; 
 int /*<<< orphan*/  pt_sec_windows_unmap ; 
 int pte_bad_image ; 
 int pte_internal ; 
 int pte_nomem ; 

int FUNC7(struct pt_section *section, int fd)
{
	struct pt_sec_windows_mapping *mapping;
	uint64_t offset, size, adjustment;
	HANDLE fh, mh;
	DWORD dsize;
	uint8_t *base;
	int errcode;

	if (!section)
		return -pte_internal;

	offset = section->offset;
	size = section->size;

	adjustment = offset % FUNC5();

	offset -= adjustment;
	size += adjustment;

	/* The section is supposed to fit into the file so we shouldn't
	 * see any overflows, here.
	 */
	if (size < section->size)
		return -pte_internal;

	dsize = (DWORD) size;
	if ((uint64_t) dsize != size)
		return -pte_internal;

	fh = (HANDLE) FUNC4(fd);

	mh = FUNC1(fh, NULL, PAGE_READONLY, 0, 0, NULL);
	if (!mh)
		return -pte_bad_image;

	base = FUNC2(mh, FILE_MAP_READ, (DWORD) (offset >> 32),
			     (DWORD) (uint32_t) offset, dsize);
	if (!base) {
		errcode = -pte_bad_image;
		goto out_mh;
	}

	mapping = FUNC6(sizeof(*mapping));
	if (!mapping) {
		errcode = -pte_nomem;
		goto out_map;
	}

	mapping->fd = fd;
	mapping->mh = mh;
	mapping->base = base;
	mapping->begin = base + adjustment;
	mapping->end = base + size;

	section->mapping = mapping;
	section->unmap = pt_sec_windows_unmap;
	section->read = pt_sec_windows_read;
	section->memsize = pt_sec_windows_memsize;

	return 0;

out_map:
	FUNC3(base);

out_mh:
	FUNC0(mh);
	return errcode;
}