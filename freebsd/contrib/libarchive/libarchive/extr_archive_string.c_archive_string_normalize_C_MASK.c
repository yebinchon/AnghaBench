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
typedef  int uint32_t ;
struct archive_string_conv {int flag; } ;
struct archive_string {size_t length; char* s; int buffer_length; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FDC_MAX ; 
 int HC_LBASE ; 
 int HC_LCOUNT ; 
 int HC_SBASE ; 
 int HC_SCOUNT ; 
 int HC_TBASE ; 
 int HC_TCOUNT ; 
 int HC_VBASE ; 
 int HC_VCOUNT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int SCONV_FROM_UTF16BE ; 
 int SCONV_FROM_UTF16LE ; 
 int SCONV_FROM_UTF8 ; 
 int SCONV_TO_UTF16BE ; 
 int SCONV_TO_UTF16LE ; 
 int SCONV_TO_UTF8 ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (struct archive_string*,size_t) ; 
 int FUNC8 (int*,char const*,size_t) ; 
 int FUNC9 (int,int) ; 
 size_t FUNC10 (char*,size_t,int) ; 
 size_t FUNC11 (char*,size_t,int) ; 
 size_t FUNC12 (char*,size_t,int) ; 
 int FUNC13 (int*,char const*,size_t) ; 
 int FUNC14 (int*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC15(struct archive_string *as, const void *_p,
    size_t len, struct archive_string_conv *sc)
{
	const char *s = (const char *)_p;
	char *p, *endp;
	uint32_t uc, uc2;
	size_t w;
	int always_replace, n, n2, ret = 0, spair, ts, tm;
	int (*parse)(uint32_t *, const char *, size_t);
	size_t (*unparse)(char *, size_t, uint32_t);

	always_replace = 1;
	ts = 1;/* text size. */
	if (sc->flag & SCONV_TO_UTF16BE) {
		unparse = unicode_to_utf16be;
		ts = 2;
		if (sc->flag & SCONV_FROM_UTF16BE)
			always_replace = 0;
	} else if (sc->flag & SCONV_TO_UTF16LE) {
		unparse = unicode_to_utf16le;
		ts = 2;
		if (sc->flag & SCONV_FROM_UTF16LE)
			always_replace = 0;
	} else if (sc->flag & SCONV_TO_UTF8) {
		unparse = unicode_to_utf8;
		if (sc->flag & SCONV_FROM_UTF8)
			always_replace = 0;
	} else {
		/*
		 * This case is going to be converted to another
		 * character-set through iconv.
		 */
		always_replace = 0;
		if (sc->flag & SCONV_FROM_UTF16BE) {
			unparse = unicode_to_utf16be;
			ts = 2;
		} else if (sc->flag & SCONV_FROM_UTF16LE) {
			unparse = unicode_to_utf16le;
			ts = 2;
		} else {
			unparse = unicode_to_utf8;
		}
	}

	if (sc->flag & SCONV_FROM_UTF16BE) {
		parse = utf16be_to_unicode;
		tm = 1;
		spair = 4;/* surrogate pair size in UTF-16. */
	} else if (sc->flag & SCONV_FROM_UTF16LE) {
		parse = utf16le_to_unicode;
		tm = 1;
		spair = 4;/* surrogate pair size in UTF-16. */
	} else {
		parse = cesu8_to_unicode;
		tm = ts;
		spair = 6;/* surrogate pair size in UTF-8. */
	}

	if (FUNC7(as, as->length + len * tm + ts) == NULL)
		return (-1);

	p = as->s + as->length;
	endp = as->s + as->buffer_length - ts;
	while ((n = parse(&uc, s, len)) != 0) {
		const char *ucptr, *uc2ptr;

		if (n < 0) {
			/* Use a replaced unicode character. */
			FUNC4(p, endp, uc);
			s += n*-1;
			len -= n*-1;
			ret = -1;
			continue;
		} else if (n == spair || always_replace)
			/* uc is converted from a surrogate pair.
			 * this should be treated as a changed code. */
			ucptr = NULL;
		else
			ucptr = s;
		s += n;
		len -= n;

		/* Read second code point. */
		while ((n2 = parse(&uc2, s, len)) > 0) {
			uint32_t ucx[FDC_MAX];
			int ccx[FDC_MAX];
			int cl, cx, i, nx, ucx_size;
			int LIndex,SIndex;
			uint32_t nfc;

			if (n2 == spair || always_replace)
				/* uc2 is converted from a surrogate pair.
			 	 * this should be treated as a changed code. */
				uc2ptr = NULL;
			else
				uc2ptr = s;
			s += n2;
			len -= n2;

			/*
			 * If current second code point is out of decomposable
			 * code points, finding compositions is unneeded.
			 */
			if (!FUNC2(uc2)) {
				FUNC6();
				FUNC3();
				continue;
			}

			/*
			 * Try to combine current code points.
			 */
			/*
			 * We have to combine Hangul characters according to
			 * http://uniicode.org/reports/tr15/#Hangul
			 */
			if (0 <= (LIndex = uc - HC_LBASE) &&
			    LIndex < HC_LCOUNT) {
				/*
				 * Hangul Composition.
				 * 1. Two current code points are L and V.
				 */
				int VIndex = uc2 - HC_VBASE;
				if (0 <= VIndex && VIndex < HC_VCOUNT) {
					/* Make syllable of form LV. */
					FUNC5(HC_SBASE +
					    (LIndex * HC_VCOUNT + VIndex) *
					     HC_TCOUNT);
				} else {
					FUNC6();
					FUNC3();
				}
				continue;
			} else if (0 <= (SIndex = uc - HC_SBASE) &&
			    SIndex < HC_SCOUNT && (SIndex % HC_TCOUNT) == 0) {
				/*
				 * Hangul Composition.
				 * 2. Two current code points are LV and T.
				 */
				int TIndex = uc2 - HC_TBASE;
				if (0 < TIndex && TIndex < HC_TCOUNT) {
					/* Make syllable of form LVT. */
					FUNC5(uc + TIndex);
				} else {
					FUNC6();
					FUNC3();
				}
				continue;
			} else if ((nfc = FUNC9(uc, uc2)) != 0) {
				/* A composition to current code points
				 * is found. */
				FUNC5(nfc);
				continue;
			} else if ((cl = FUNC0(uc2)) == 0) {
				/* Clearly 'uc2' the second code point is not
				 * a decomposable code. */
				FUNC6();
				FUNC3();
				continue;
			}

			/*
			 * Collect following decomposable code points.
			 */
			cx = 0;
			ucx[0] = uc2;
			ccx[0] = cl;
			FUNC1(1);

			/*
			 * Find a composed code in the collected code points.
			 */
			i = 1;
			while (i < ucx_size) {
				int j;

				if ((nfc = FUNC9(uc, ucx[i])) == 0) {
					i++;
					continue;
				}

				/*
				 * nfc is composed of uc and ucx[i].
				 */
				FUNC5(nfc);

				/*
				 * Remove ucx[i] by shifting
				 * following code points.
				 */
				for (j = i; j+1 < ucx_size; j++) {
					ucx[j] = ucx[j+1];
					ccx[j] = ccx[j+1];
				}
				ucx_size --;

				/*
				 * Collect following code points blocked
				 * by ucx[i] the removed code point.
				 */
				if (ucx_size > 0 && i == ucx_size &&
				    nx > 0 && cx == cl) {
					cl =  ccx[ucx_size-1];
					FUNC1(ucx_size);
				}
				/*
				 * Restart finding a composed code with
				 * the updated uc from the top of the
				 * collected code points.
				 */
				i = 0;
			}

			/*
			 * Apparently the current code points are not
			 * decomposed characters or already composed.
			 */
			FUNC6();
			for (i = 0; i < ucx_size; i++)
				FUNC4(p, endp, ucx[i]);

			/*
			 * Flush out remaining canonical combining characters.
			 */
			if (nx > 0 && cx == cl && len > 0) {
				while ((nx = parse(&ucx[0], s, len))
				    > 0) {
					cx = FUNC0(ucx[0]);
					if (cl > cx)
						break;
					s += nx;
					len -= nx;
					cl = cx;
					FUNC4(p, endp, ucx[0]);
				}
			}
			break;
		}
		if (n2 < 0) {
			FUNC6();
			/* Use a replaced unicode character. */
			FUNC4(p, endp, uc2);
			s += n2*-1;
			len -= n2*-1;
			ret = -1;
			continue;
		} else if (n2 == 0) {
			FUNC6();
			break;
		}
	}
	as->length = p - as->s;
	as->s[as->length] = '\0';
	if (ts == 2)
		as->s[as->length+1] = '\0';
	return (ret);
}