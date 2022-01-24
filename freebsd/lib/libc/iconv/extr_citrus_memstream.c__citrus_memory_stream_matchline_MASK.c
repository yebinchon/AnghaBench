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
struct _citrus_memory_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  T_COMM ; 
 char* FUNC0 (char const*,size_t*) ; 
 char* FUNC1 (char const*,size_t*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,size_t*) ; 
 char* FUNC4 (struct _citrus_memory_stream*,size_t*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC6 (char const*,char const*,size_t) ; 
 size_t FUNC7 (char const*) ; 

const char *
FUNC8(struct _citrus_memory_stream * __restrict ms,
    const char * __restrict key, size_t * __restrict rlen, int iscasesensitive)
{
	const char *p, *q;
	size_t keylen, len;

	keylen = FUNC7(key);
	for(;;) {
		p = FUNC4(ms, &len);
		if (p == NULL)
			return (NULL);

		/* ignore comment */
		q = FUNC5(p, T_COMM, len);
		if (q) {
			len = q - p;
		}
		/* ignore trailing white space and newline */
		FUNC3(p, &len);
		if (len == 0)
			continue; /* ignore null line */

		/* skip white spaces at the head of the line */
		p = FUNC1(p, &len);
		q = FUNC0(p, &len);

		if ((size_t)(q - p) == keylen) {
			if (iscasesensitive) {
				if (FUNC6(key, p, keylen) == 0)
					break; /* match */
			} else {
				if (FUNC2(key, p, keylen) == 0)
					break; /* match */
			}
		}
	}

	p = FUNC1(q, &len);
	*rlen = len;

	return (p);
}