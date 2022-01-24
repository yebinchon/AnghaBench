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

/* Variables and functions */
 size_t BUFFER_GROWFACTOR ; 
 int /*<<< orphan*/  FLOAT_SPRINTF_TRY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (float*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,size_t,char*,float) ; 

__attribute__((used)) static char *
FUNC5(const char *p, size_t len)
{
	size_t i, rtn_len, limit;
	float f;
	int byte;
	char *rtn;

	if (p == NULL || len == 0 || len % 2 != 0 || len / 2 > sizeof(float))
		return (NULL);

	FUNC3(&f, 0, sizeof(float));

	for (i = 0; i < len / 2; ++i) {
		byte = FUNC1(p[len - i * 2 - 1]) +
		    FUNC1(p[len - i * 2 - 2]) * 16;
		if (byte < 0 || byte > 255)
			return (NULL);
#if ELFTC_BYTE_ORDER == ELFTC_BYTE_ORDER_LITTLE_ENDIAN
		((unsigned char *)&f)[i] = (unsigned char)(byte);
#else /* ELFTC_BYTE_ORDER != ELFTC_BYTE_ORDER_LITTLE_ENDIAN */
		((unsigned char *)&f)[sizeof(float) - i - 1] =
		    (unsigned char)(byte);
#endif /* ELFTC_BYTE_ORDER == ELFTC_BYTE_ORDER_LITTLE_ENDIAN */
	}

	rtn_len = 64;
	limit = 0;
again:
	if ((rtn = FUNC2(sizeof(char) * rtn_len)) == NULL)
		return (NULL);

	if (FUNC4(rtn, rtn_len, "%ff", f) >= (int)rtn_len) {
		FUNC0(rtn);
		if (limit++ > FLOAT_SPRINTF_TRY_LIMIT)
			return (NULL);
		rtn_len *= BUFFER_GROWFACTOR;
		goto again;
	}

	return rtn;
}