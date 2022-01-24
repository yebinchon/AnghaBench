#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _memstream {int dummy; } ;
struct TYPE_4__ {char const* str; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  TYPE_2__ _citrus_prop_object_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
#define  EOF 128 
 size_t _CITRUS_PROP_STR_BUFSIZ ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct _memstream*,int*) ; 
 int FUNC2 (struct _memstream*) ; 
 int /*<<< orphan*/  FUNC3 (struct _memstream*) ; 
 int /*<<< orphan*/  FUNC4 (struct _memstream*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (size_t) ; 
 char* FUNC7 (char*,size_t) ; 

__attribute__((used)) static int
FUNC8(struct _memstream * __restrict ms,
    _citrus_prop_object_t * __restrict obj)
{
	int ch, errnum, quot;
	char *s, *t;
#define _CITRUS_PROP_STR_BUFSIZ	512
	size_t m, n;

	m = _CITRUS_PROP_STR_BUFSIZ;
	s = FUNC6(m);
	if (s == NULL)
		return (ENOMEM);
	n = 0;
	FUNC3(ms);
	quot = FUNC2(ms);
	switch (quot) {
	case EOF:
		goto done;
		/*NOTREACHED*/
	case '\\':
		FUNC4(ms, quot);
		quot = EOF;
		/*FALLTHROUGH*/
	case '\"': case '\'':
		break;
	default:
		s[n] = quot;
		++n, --m;
		quot = EOF;
	}
	for (;;) {
		if (m < 1) {
			m = _CITRUS_PROP_STR_BUFSIZ;
			t = FUNC7(s, n + m);
			if (t == NULL) {
				FUNC5(s);
				return (ENOMEM);
			}
			s = t;
		}
		ch = FUNC2(ms);
		if (quot == ch || (quot == EOF &&
		    (ch == ';' || FUNC0(ch)))) {
done:
			s[n] = '\0';
			obj->u.str = (const char *)s;
			return (0);
		}
		FUNC4(ms, ch);
		errnum = FUNC1(ms, &ch);
		if (errnum != 0) {
			FUNC5(s);
			return (errnum);
		}
		s[n] = ch;
		++n, --m;
	}
	FUNC5(s);
	return (EINVAL);
#undef _CITRUS_PROP_STR_BUFSIZ
}