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
typedef  int /*<<< orphan*/  vdev_t ;
typedef  unsigned int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC1 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 size_t FUNC5 (int,char*,unsigned int) ; 
 size_t FUNC6 (size_t,unsigned int) ; 
 char* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 

__attribute__((used)) static int
FUNC9(vdev_t *vdev, void *priv, off_t offset, void *buf, size_t bytes)
{
	int fd, ret;
	size_t res, head, tail, total_size, full_sec_size;
	unsigned secsz, do_tail_read;
	off_t start_sec;
	char *outbuf, *bouncebuf;

	fd = (uintptr_t) priv;
	outbuf = (char *) buf;
	bouncebuf = NULL;

	ret = FUNC0(fd, DIOCGSECTORSIZE, &secsz);
	if (ret != 0)
		return (ret);

	/*
	 * Handling reads of arbitrary offset and size - multi-sector case
	 * and single-sector case.
	 *
	 *                        Multi-sector Case
	 *                (do_tail_read = true if tail > 0)
	 *
	 *   |<----------------------total_size--------------------->|
	 *   |                                                       |
	 *   |<--head-->|<--------------bytes------------>|<--tail-->|
	 *   |          |                                 |          |
	 *   |          |       |<~full_sec_size~>|       |          |
	 *   +------------------+                 +------------------+
	 *   |          |0101010|     .  .  .     |0101011|          |
	 *   +------------------+                 +------------------+
	 *         start_sec                         start_sec + n
	 *
	 *
	 *                      Single-sector Case
	 *                    (do_tail_read = false)
	 *
	 *              |<------total_size = secsz----->|
	 *              |                               |
	 *              |<-head->|<---bytes--->|<-tail->|
	 *              +-------------------------------+
	 *              |        |0101010101010|        |
	 *              +-------------------------------+
	 *                          start_sec
	 */
	start_sec = offset / secsz;
	head = offset % secsz;
	total_size = FUNC6(head + bytes, secsz);
	tail = total_size - (head + bytes);
	do_tail_read = ((tail > 0) && (head + bytes > secsz));
	full_sec_size = total_size;
	if (head > 0)
		full_sec_size -= secsz;
	if (do_tail_read)
		full_sec_size -= secsz;

	/* Return of partial sector data requires a bounce buffer. */
	if ((head > 0) || do_tail_read) {
		bouncebuf = FUNC7(secsz);
		if (bouncebuf == NULL) {
			FUNC4("vdev_read: out of memory\n");
			return (ENOMEM);
		}
	}

	if (FUNC1(fd, start_sec * secsz, SEEK_SET) == -1) {
		ret = errno;
		goto error;
	}

	/* Partial data return from first sector */
	if (head > 0) {
		res = FUNC5(fd, bouncebuf, secsz);
		if (res != secsz) {
			ret = EIO;
			goto error;
		}
		FUNC2(outbuf, bouncebuf + head, FUNC3(secsz - head, bytes));
		outbuf += FUNC3(secsz - head, bytes);
	}

	/* Full data return from read sectors */
	if (full_sec_size > 0) {
		res = FUNC5(fd, outbuf, full_sec_size);
		if (res != full_sec_size) {
			ret = EIO;
			goto error;
		}
		outbuf += full_sec_size;
	}

	/* Partial data return from last sector */
	if (do_tail_read) {
		res = FUNC5(fd, bouncebuf, secsz);
		if (res != secsz) {
			ret = EIO;
			goto error;
		}
		FUNC2(outbuf, bouncebuf, secsz - tail);
	}

	ret = 0;
error:
	if (bouncebuf != NULL)
		FUNC8(bouncebuf, secsz);
	return (ret);
}