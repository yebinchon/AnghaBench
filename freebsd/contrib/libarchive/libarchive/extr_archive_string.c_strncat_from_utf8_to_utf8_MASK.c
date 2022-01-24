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
typedef  int /*<<< orphan*/  uint32_t ;
struct archive_string_conv {int dummy; } ;
struct archive_string {size_t length; char* s; int buffer_length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct archive_string*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 size_t FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int
FUNC6(struct archive_string *as, const void *_p,
    size_t len, struct archive_string_conv *sc)
{
	const char *s;
	char *p, *endp;
	int n, ret = 0;

	(void)sc; /* UNUSED */

	if (FUNC1(as, as->length + len + 1) == NULL)
		return (-1);

	s = (const char *)_p;
	p = as->s + as->length;
	endp = as->s + as->buffer_length -1;
	do {
		uint32_t uc;
		const char *ss = s;
		size_t w;

		/*
		 * Forward byte sequence until a conversion of that is needed.
		 */
		while ((n = FUNC5(&uc, s, len)) > 0) {
			s += n;
			len -= n;
		}
		if (ss < s) {
			if (p + (s - ss) > endp) {
				as->length = p - as->s;
				if (FUNC1(as,
				    as->buffer_length + len + 1) == NULL)
					return (-1);
				p = as->s + as->length;
				endp = as->s + as->buffer_length -1;
			}

			FUNC3(p, ss, s - ss);
			p += s - ss;
		}

		/*
		 * If n is negative, current byte sequence needs a replacement.
		 */
		if (n < 0) {
			if (n == -3 && FUNC0(uc)) {
				/* Current byte sequence may be CESU-8. */
				n = FUNC2(&uc, s, len);
			}
			if (n < 0) {
				ret = -1;
				n *= -1;/* Use a replaced unicode character. */
			}

			/* Rebuild UTF-8 byte sequence. */
			while ((w = FUNC4(p, endp - p, uc)) == 0) {
				as->length = p - as->s;
				if (FUNC1(as,
				    as->buffer_length + len + 1) == NULL)
					return (-1);
				p = as->s + as->length;
				endp = as->s + as->buffer_length -1;
			}
			p += w;
			s += n;
			len -= n;
		}
	} while (n > 0);
	as->length = p - as->s;
	as->s[as->length] = '\0';
	return (ret);
}