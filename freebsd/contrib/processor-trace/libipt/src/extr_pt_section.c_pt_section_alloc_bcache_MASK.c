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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct pt_section {struct pt_image_section_cache* iscache; struct pt_block_cache* bcache; int /*<<< orphan*/  mcount; } ;
struct pt_image_section_cache {int dummy; } ;
struct pt_block_cache {int dummy; } ;

/* Variables and functions */
 struct pt_block_cache* FUNC0 (scalar_t__) ; 
 int FUNC1 (struct pt_image_section_cache*,struct pt_section*,scalar_t__) ; 
 struct pt_block_cache* FUNC2 (struct pt_section*) ; 
 int FUNC3 (struct pt_section*) ; 
 int FUNC4 (struct pt_section*) ; 
 int FUNC5 (struct pt_section*,scalar_t__*) ; 
 scalar_t__ FUNC6 (struct pt_section*) ; 
 int FUNC7 (struct pt_section*) ; 
 int FUNC8 (struct pt_section*) ; 
 int pte_internal ; 
 int pte_nomem ; 
 int pte_not_supported ; 

int FUNC9(struct pt_section *section)
{
	struct pt_image_section_cache *iscache;
	struct pt_block_cache *bcache;
	uint64_t ssize, memsize;
	uint32_t csize;
	int errcode;

	if (!section)
		return -pte_internal;

	if (!section->mcount)
		return -pte_internal;

	ssize = FUNC6(section);
	csize = (uint32_t) ssize;

	if (csize != ssize)
		return -pte_not_supported;

	memsize = 0ull;

	/* We need to take both the attach and the section lock in order to pair
	 * the block cache allocation and the resize notification.
	 *
	 * This allows map notifications in between but they only change the
	 * order of sections in the cache.
	 *
	 * The attach lock needs to be taken first.
	 */
	errcode = FUNC4(section);
	if (errcode < 0)
		return errcode;

	errcode = FUNC3(section);
	if (errcode < 0)
		goto out_alock;

	bcache = FUNC2(section);
	if (bcache) {
		errcode = 0;
		goto out_lock;
	}

	bcache = FUNC0(csize);
	if (!bcache) {
		errcode = -pte_nomem;
		goto out_lock;
	}

	/* Install the block cache.  It will become visible and may be used
	 * immediately.
	 *
	 * If we fail later on, we leave the block cache and report the error to
	 * the allocating decoder thread.
	 */
	section->bcache = bcache;

	errcode = FUNC5(section, &memsize);
	if (errcode < 0)
		goto out_lock;

	errcode = FUNC7(section);
	if (errcode < 0)
		goto out_alock;

	if (memsize) {
		iscache = section->iscache;
		if (iscache) {
			errcode = FUNC1(iscache, section,
							  memsize);
			if (errcode < 0)
				goto out_alock;
		}
	}

	return FUNC8(section);


out_lock:
	(void) FUNC7(section);

out_alock:
	(void) FUNC8(section);
	return errcode;
}