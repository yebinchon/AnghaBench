#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_char ;
typedef  int /*<<< orphan*/ * iconv_src_t ;
struct TYPE_7__ {int /*<<< orphan*/ * id; } ;
struct TYPE_8__ {scalar_t__ lastc; char* cname; size_t clen; TYPE_1__ conv; } ;
typedef  TYPE_2__ SCR ;
typedef  scalar_t__ ARG_CHAR_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__) ; 
 size_t IC_IE_TO_UTF16 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 size_t MB_CUR_MAX ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_NOPRINT ; 
 int /*<<< orphan*/  O_OCTAL ; 
 int /*<<< orphan*/  O_PRINT ; 
 char* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,char**,size_t*) ; 
 scalar_t__ FUNC8 (int) ; 
 size_t FUNC9 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 size_t FUNC12 (char*,scalar_t__) ; 

char *
FUNC13(
	SCR *sp,
	ARG_CHAR_T ach)
{
	static const char hexdigit[] = "0123456789abcdef";
	static const char octdigit[] = "01234567";
	int ch;
	size_t len;
	char *chp;

	/*
	 * Cache the last checked character.  It won't be a problem
	 * since nvi will rescan the mapping when settings changed.
	 */
	if (ach && sp->lastc == ach)
		return (sp->cname);
	sp->lastc = ach;

#ifdef USE_WIDECHAR
	len = wctomb(sp->cname, ach);
	if (len > MB_CUR_MAX)
#endif
		sp->cname[(len = 1)-1] = (u_char)ach;

	ch = (u_char)sp->cname[0];
	sp->cname[len] = '\0';

	/* See if the character was explicitly declared printable or not. */
	if ((chp = FUNC3(sp, O_PRINT)) != NULL)
		if (FUNC11(chp, sp->cname) != NULL)
			goto done;
	if ((chp = FUNC3(sp, O_NOPRINT)) != NULL)
		if (FUNC11(chp, sp->cname) != NULL)
			goto nopr;

	/*
	 * Historical (ARPA standard) mappings.  Printable characters are left
	 * alone.  Control characters less than 0x20 are represented as '^'
	 * followed by the character offset from the '@' character in the ASCII
	 * character set.  Del (0x7f) is represented as '^' followed by '?'.
	 *
	 * XXX
	 * The following code depends on the current locale being identical to
	 * the ASCII map from 0x40 to 0x5f (since 0x1f + 0x40 == 0x5f).  I'm
	 * told that this is a reasonable assumption...
	 *
	 * XXX
	 * The code prints non-printable wide characters in 4 or 5 digits
	 * Unicode escape sequences, so only supports plane 0 to 15.
	 */
	if (FUNC0(sp, ach))
		goto done;
nopr:	if (FUNC8(ch) && (ch < 0x20 || ch == 0x7f)) {
		sp->cname[0] = '^';
		sp->cname[1] = ch == 0x7f ? '?' : '@' + ch;
		len = 2;
		goto done;
	}
#ifdef USE_WIDECHAR
	if (INTISWIDE(ach)) {
		int uc = -1;

		if (!strcmp(codeset(), "UTF-8"))
			uc = decode_utf8(sp->cname);
#ifdef USE_ICONV
		else {
			char buf[sizeof(sp->cname)] = "";
			size_t left = sizeof(sp->cname);
			char *in = sp->cname;
			char *out = buf;
			iconv(sp->conv.id[IC_IE_TO_UTF16],
			    (iconv_src_t)&in, &len, &out, &left);
			iconv(sp->conv.id[IC_IE_TO_UTF16],
			    NULL, NULL, NULL, NULL);
			uc = decode_utf16(buf, 1);
		}
#endif
		if (uc >= 0) {
			len = snprintf(sp->cname, sizeof(sp->cname),
			    uc < 0x10000 ? "\\u%04x" : "\\U%05X", uc);
			goto done;
		}
	}
#endif
	if (FUNC2(sp, O_OCTAL)) {
		sp->cname[0] = '\\';
		sp->cname[1] = octdigit[(ch & 0300) >> 6];
		sp->cname[2] = octdigit[(ch &  070) >> 3];
		sp->cname[3] = octdigit[ ch &   07      ];
	} else {
		sp->cname[0] = '\\';
		sp->cname[1] = 'x';
		sp->cname[2] = hexdigit[(ch & 0xf0) >> 4];
		sp->cname[3] = hexdigit[ ch & 0x0f      ];
	}
	len = 4;
done:	sp->cname[sp->clen = len] = '\0';
	return (sp->cname);
}