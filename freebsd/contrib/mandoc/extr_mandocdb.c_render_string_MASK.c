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
#define  ASCII_BREAK 130 
#define  ASCII_HYPH 129 
#define  ASCII_NBRSP 128 
 scalar_t__ ESCAPE_SPECIAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char const**,char const**,int*) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 int FUNC4 (char const*,int) ; 
 char* FUNC5 (char const*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char const) ; 
 size_t FUNC8 (int,char*) ; 
 scalar_t__ write_utf8 ; 

__attribute__((used)) static int
FUNC9(char **public, size_t *psz)
{
	const char	*src, *scp, *addcp, *seq;
	char		*dst;
	size_t		 ssz, dsz, addsz;
	char		 utfbuf[7], res[6];
	int		 seqlen, unicode;

	res[0] = '\\';
	res[1] = '\t';
	res[2] = ASCII_NBRSP;
	res[3] = ASCII_HYPH;
	res[4] = ASCII_BREAK;
	res[5] = '\0';

	src = scp = *public;
	ssz = *psz;
	dst = NULL;
	dsz = 0;

	while (scp < src + *psz) {

		/* Leave normal characters unchanged. */

		if (FUNC7(res, *scp) == NULL) {
			if (dst != NULL)
				dst[dsz++] = *scp;
			scp++;
			continue;
		}

		/*
		 * Found something that requires replacing,
		 * make sure we have a destination buffer.
		 */

		if (dst == NULL) {
			dst = FUNC2(ssz + 1);
			dsz = scp - src;
			FUNC6(dst, src, dsz);
		}

		/* Handle single-char special characters. */

		switch (*scp) {
		case '\\':
			break;
		case '\t':
		case ASCII_NBRSP:
			dst[dsz++] = ' ';
			scp++;
			continue;
		case ASCII_HYPH:
			dst[dsz++] = '-';
			/* FALLTHROUGH */
		case ASCII_BREAK:
			scp++;
			continue;
		default:
			FUNC0();
		}

		/*
		 * Found an escape sequence.
		 * Read past the slash, then parse it.
		 * Ignore everything except characters.
		 */

		scp++;
		if (FUNC1(&scp, &seq, &seqlen) != ESCAPE_SPECIAL)
			continue;

		/*
		 * Render the special character
		 * as either UTF-8 or ASCII.
		 */

		if (write_utf8) {
			unicode = FUNC4(seq, seqlen);
			if (unicode <= 0)
				continue;
			addsz = FUNC8(unicode, utfbuf);
			if (addsz == 0)
				continue;
			addcp = utfbuf;
		} else {
			addcp = FUNC5(seq, seqlen, &addsz);
			if (addcp == NULL)
				continue;
			if (*addcp == ASCII_NBRSP) {
				addcp = " ";
				addsz = 1;
			}
		}

		/* Copy the rendered glyph into the stream. */

		ssz += addsz;
		dst = FUNC3(dst, ssz + 1);
		FUNC6(dst + dsz, addcp, addsz);
		dsz += addsz;
	}
	if (dst != NULL) {
		*public = dst;
		*psz = dsz;
	}

	/* Trim trailing whitespace and NUL-terminate. */

	while (*psz > 0 && (*public)[*psz - 1] == ' ')
		--*psz;
	if (dst != NULL) {
		(*public)[*psz] = '\0';
		return 1;
	} else
		return 0;
}