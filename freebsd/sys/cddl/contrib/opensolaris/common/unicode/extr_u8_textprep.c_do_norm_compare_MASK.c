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
typedef  scalar_t__ uchar_t ;
typedef  int /*<<< orphan*/  u8_normalization_states_t ;
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int U8_CANON_COMP ; 
 int U8_CANON_DECOMP ; 
 int U8_COMPAT_DECOMP ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  U8_STATE_START ; 
 int /*<<< orphan*/  U8_STREAM_SAFE_TEXT_MAX ; 
 int U8_TEXTPREP_TOLOWER ; 
 int U8_TEXTPREP_TOUPPER ; 
 size_t FUNC3 (size_t,scalar_t__*,scalar_t__**,scalar_t__*,int,int,int,int,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC5(size_t uv, uchar_t *s1, uchar_t *s2, size_t n1, size_t n2,
	int flag, int *errnum)
{
	int result;
	size_t sz1;
	size_t sz2;
	uchar_t u8s1[U8_STREAM_SAFE_TEXT_MAX + 1];
	uchar_t u8s2[U8_STREAM_SAFE_TEXT_MAX + 1];
	uchar_t *s1last;
	uchar_t *s2last;
	boolean_t is_it_toupper;
	boolean_t is_it_tolower;
	boolean_t canonical_decomposition;
	boolean_t compatibility_decomposition;
	boolean_t canonical_composition;
	u8_normalization_states_t state;

	s1last = s1 + n1;
	s2last = s2 + n2;

	is_it_toupper = flag & U8_TEXTPREP_TOUPPER;
	is_it_tolower = flag & U8_TEXTPREP_TOLOWER;
	canonical_decomposition = flag & U8_CANON_DECOMP;
	compatibility_decomposition = flag & U8_COMPAT_DECOMP;
	canonical_composition = flag & U8_CANON_COMP;

	while (s1 < s1last && s2 < s2last) {
		/*
		 * If the current character is a 7-bit ASCII and the last
		 * character, or, if the current character and the next
		 * character are both some 7-bit ASCII characters then
		 * we treat the current character as a sequence.
		 *
		 * In any other cases, we need to call collect_a_seq().
		 */

		if (FUNC2(*s1) && ((s1 + 1) >= s1last ||
		    ((s1 + 1) < s1last && FUNC2(*(s1 + 1))))) {
			if (is_it_toupper)
				u8s1[0] = FUNC1(*s1);
			else if (is_it_tolower)
				u8s1[0] = FUNC0(*s1);
			else
				u8s1[0] = *s1;
			u8s1[1] = '\0';
			sz1 = 1;
			s1++;
		} else {
			state = U8_STATE_START;
			sz1 = FUNC3(uv, u8s1, &s1, s1last,
			    is_it_toupper, is_it_tolower,
			    canonical_decomposition,
			    compatibility_decomposition,
			    canonical_composition, errnum, &state);
		}

		if (FUNC2(*s2) && ((s2 + 1) >= s2last ||
		    ((s2 + 1) < s2last && FUNC2(*(s2 + 1))))) {
			if (is_it_toupper)
				u8s2[0] = FUNC1(*s2);
			else if (is_it_tolower)
				u8s2[0] = FUNC0(*s2);
			else
				u8s2[0] = *s2;
			u8s2[1] = '\0';
			sz2 = 1;
			s2++;
		} else {
			state = U8_STATE_START;
			sz2 = FUNC3(uv, u8s2, &s2, s2last,
			    is_it_toupper, is_it_tolower,
			    canonical_decomposition,
			    compatibility_decomposition,
			    canonical_composition, errnum, &state);
		}

		/*
		 * Now compare the two characters. If they are the same,
		 * we move on to the next character sequences.
		 */
		if (sz1 == 1 && sz2 == 1) {
			if (*u8s1 > *u8s2)
				return (1);
			if (*u8s1 < *u8s2)
				return (-1);
		} else {
			result = FUNC4((const char *)u8s1, (const char *)u8s2);
			if (result != 0)
				return (result);
		}
	}

	/*
	 * We compared until the end of either or both strings.
	 *
	 * If we reached to or went over the ends for the both, that means
	 * they are the same.
	 *
	 * If we reached only one end, that means the other string has
	 * something which then can be used to determine the return value.
	 */
	if (s1 >= s1last) {
		if (s2 >= s2last)
			return (0);
		return (-1);
	}
	return (1);
}