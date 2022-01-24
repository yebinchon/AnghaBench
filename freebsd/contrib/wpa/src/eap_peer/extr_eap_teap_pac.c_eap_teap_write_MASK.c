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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,size_t) ; 
 int FUNC2 (char*,int,char*,...) ; 
 scalar_t__ FUNC3 (int,int) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void FUNC6(char **buf, char **pos, size_t *buf_len,
			   const char *field, const u8 *data,
			   size_t len, int txt)
{
	size_t i, need;
	int ret;
	char *end;

	if (!data || !buf || !(*buf) || !pos || !(*pos) || *pos < *buf)
		return;

	need = FUNC4(field) + len * 2 + 30;
	if (txt)
		need += FUNC4(field) + len + 20;

	if (*pos - *buf + need > *buf_len) {
		char *nbuf = FUNC1(*buf, *buf_len + need);

		if (!nbuf) {
			FUNC0(*buf);
			*buf = NULL;
			return;
		}
		*pos = nbuf + (*pos - *buf);
		*buf = nbuf;
		*buf_len += need;
	}
	end = *buf + *buf_len;

	ret = FUNC2(*pos, end - *pos, "%s=", field);
	if (FUNC3(end - *pos, ret))
		return;
	*pos += ret;
	*pos += FUNC5(*pos, end - *pos, data, len);
	ret = FUNC2(*pos, end - *pos, "\n");
	if (FUNC3(end - *pos, ret))
		return;
	*pos += ret;

	if (txt) {
		ret = FUNC2(*pos, end - *pos, "%s-txt=", field);
		if (FUNC3(end - *pos, ret))
			return;
		*pos += ret;
		for (i = 0; i < len; i++) {
			ret = FUNC2(*pos, end - *pos, "%c", data[i]);
			if (FUNC3(end - *pos, ret))
				return;
			*pos += ret;
		}
		ret = FUNC2(*pos, end - *pos, "\n");
		if (FUNC3(end - *pos, ret))
			return;
		*pos += ret;
	}
}