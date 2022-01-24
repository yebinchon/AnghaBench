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
struct TYPE_2__ {int length; char* s; } ;
struct shar {TYPE_1__ work; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(struct archive_write *a, struct shar *shar, const char *inbuf, size_t len)
{
	char *buf;
	size_t alloc_len;

	/* len <= 45 -> expanded to 60 + len byte + new line */
	alloc_len = shar->work.length + 62;
	if (FUNC2(&shar->work, alloc_len) == NULL) {
		FUNC1(&a->archive, ENOMEM, "Out of memory");
		return (ARCHIVE_FATAL);
	}

	buf = shar->work.s + shar->work.length;
	*buf++ = FUNC0(len);
	while (len >= 3) {
		FUNC3(inbuf, buf);
		len -= 3;
		inbuf += 3;
		buf += 4;
	}
	if (len != 0) {
		char tmp_buf[3];
		tmp_buf[0] = inbuf[0];
		if (len == 1)
			tmp_buf[1] = '\0';
		else
			tmp_buf[1] = inbuf[1];
		tmp_buf[2] = '\0';
		FUNC3(tmp_buf, buf);
		buf += 4;
	}
	*buf++ = '\n';
	if ((buf - shar->work.s) > (ptrdiff_t)(shar->work.length + 62)) {
		FUNC1(&a->archive,
		    ARCHIVE_ERRNO_MISC, "Buffer overflow");
		return (ARCHIVE_FATAL);
	}
	shar->work.length = buf - shar->work.s;
	return (ARCHIVE_OK);
}