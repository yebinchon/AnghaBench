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
typedef  int ufs2_daddr_t ;
struct uufsd {int d_bsize; int /*<<< orphan*/  d_fd; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uufsd*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 

ssize_t
FUNC6(struct uufsd *disk, ufs2_daddr_t blockno, void *data, size_t size)
{
	void *p2;
	ssize_t cnt;

	FUNC0(disk, NULL);

	p2 = data;
	/*
	 * XXX: various disk controllers require alignment of our buffer
	 * XXX: which is stricter than struct alignment.
	 * XXX: Bounce the buffer if not 64 byte aligned.
	 * XXX: this can be removed if/when the kernel is fixed
	 */
	if (((intptr_t)data) & 0x3f) {
		p2 = FUNC2(size);
		if (p2 == NULL) {
			FUNC0(disk, "allocate bounce buffer");
			goto fail;
		}
	}
	cnt = FUNC5(disk->d_fd, p2, size, (off_t)(blockno * disk->d_bsize));
	if (cnt == -1) {
		FUNC0(disk, "read error from block device");
		goto fail;
	}
	if (cnt == 0) {
		FUNC0(disk, "end of file from block device");
		goto fail;
	}
	if ((size_t)cnt != size) {
		FUNC0(disk, "short read or read error from block device");
		goto fail;
	}
	if (p2 != data) {
		FUNC3(data, p2, size);
		FUNC1(p2);
	}
	return (cnt);
fail:	FUNC4(data, 0, size);
	if (p2 != data) {
		FUNC1(p2);
	}
	return (-1);
}