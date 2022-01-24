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
 void* FUNC0 (int) ; 
 int FDC_MAX ; 
 int HC_LBASE ; 
 int HC_NCOUNT ; 
 int HC_SBASE ; 
 int HC_SCOUNT ; 
 int HC_TBASE ; 
 int HC_TCOUNT ; 
 int HC_VBASE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SCONV_FROM_UTF16BE ; 
 int SCONV_FROM_UTF16LE ; 
 int SCONV_FROM_UTF8 ; 
 int SCONV_TO_UTF16BE ; 
 int SCONV_TO_UTF16LE ; 
 int SCONV_TO_UTF8 ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (struct archive_string*,size_t) ; 
 int FUNC6 (int*,char const*,size_t) ; 
 scalar_t__ FUNC7 (int*,int*,int) ; 
 size_t FUNC8 (char*,size_t,int) ; 
 size_t FUNC9 (char*,size_t,int) ; 
 size_t FUNC10 (char*,size_t,int) ; 
 int FUNC11 (int*,char const*,size_t) ; 
 int FUNC12 (int*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC13(struct archive_string *as, const void *_p,
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

	if (FUNC5(as, as->length + len * tm + ts) == NULL)
		return (-1);

	p = as->s + as->length;
	endp = as->s + as->buffer_length - ts;
	while ((n = parse(&uc, s, len)) != 0) {
		const char *ucptr;
		uint32_t cp1, cp2;
		int SIndex;
		struct {
			uint32_t uc;
			int ccc;
		} fdc[FDC_MAX];
		int fdi, fdj;
		int ccc;

check_first_code:
		if (n < 0) {
			/* Use a replaced unicode character. */
			FUNC3(p, endp, uc);
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

		/* Hangul Decomposition. */
		if ((SIndex = uc - HC_SBASE) >= 0 && SIndex < HC_SCOUNT) {
			int L = HC_LBASE + SIndex / HC_NCOUNT;
			int V = HC_VBASE + (SIndex % HC_NCOUNT) / HC_TCOUNT;
			int T = HC_TBASE + SIndex % HC_TCOUNT;

			FUNC2(L);
			FUNC4();
			FUNC2(V);
			FUNC4();
			if (T != HC_TBASE) {
				FUNC2(T);
				FUNC4();
			}
			continue;
		}
		if (FUNC1(uc) && FUNC0(uc) != 0) {
			FUNC4();
			continue;
		}

		fdi = 0;
		while (FUNC7(&cp1, &cp2, uc) && fdi < FDC_MAX) {
			int k;

			for (k = fdi; k > 0; k--)
				fdc[k] = fdc[k-1];
			fdc[0].ccc = FUNC0(cp2);
			fdc[0].uc = cp2;
			fdi++;
			FUNC2(cp1);
		}

		/* Read following code points. */
		while ((n2 = parse(&uc2, s, len)) > 0 &&
		    (ccc = FUNC0(uc2)) != 0 && fdi < FDC_MAX) {
			int j, k;

			s += n2;
			len -= n2;
			for (j = 0; j < fdi; j++) {
				if (fdc[j].ccc > ccc)
					break;
			}
			if (j < fdi) {
				for (k = fdi; k > j; k--)
					fdc[k] = fdc[k-1];
				fdc[j].ccc = ccc;
				fdc[j].uc = uc2;
			} else {
				fdc[fdi].ccc = ccc;
				fdc[fdi].uc = uc2;
			}
			fdi++;
		}

		FUNC4();
		for (fdj = 0; fdj < fdi; fdj++) {
			FUNC2(fdc[fdj].uc);
			FUNC4();
		}

		if (n2 == 0)
			break;
		FUNC2(uc2);
		n = n2;
		goto check_first_code;
	}
	as->length = p - as->s;
	as->s[as->length] = '\0';
	if (ts == 2)
		as->s[as->length+1] = '\0';
	return (ret);
}