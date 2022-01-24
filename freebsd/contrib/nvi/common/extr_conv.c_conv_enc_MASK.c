#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ iconv_t ;
struct TYPE_8__ {scalar_t__* id; } ;
struct TYPE_9__ {TYPE_1__ conv; } ;
typedef  TYPE_2__ SCR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__* IC_FE_CHAR2INT ; 
 scalar_t__* IC_FE_INT2CHAR ; 
 scalar_t__* IC_IE_CHAR2INT ; 
 scalar_t__* IC_IE_TO_UTF16 ; 
 int /*<<< orphan*/  M_ERR ; 
#define  O_FILEENCODING 129 
#define  O_INPUTENCODING 128 
 char* FUNC2 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/  SC_CONV_ERROR ; 
 int /*<<< orphan*/  SC_SCR_REFORMAT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

int
FUNC9(SCR *sp, int option, char *enc)
{
#if defined(USE_WIDECHAR) && defined(USE_ICONV)
	iconv_t *c2w, *w2c;
	iconv_t id_c2w, id_w2c;

	switch (option) {
	case O_FILEENCODING:
		c2w = sp->conv.id + IC_FE_CHAR2INT;
		w2c = sp->conv.id + IC_FE_INT2CHAR;
		if (!enc)
			enc = O_STR(sp, O_FILEENCODING);

		if (strcasecmp(codeset(), enc)) {
			if ((id_c2w = iconv_open(codeset(), enc)) ==
			    (iconv_t)-1)
				goto err;
			if ((id_w2c = iconv_open(enc, codeset())) ==
			    (iconv_t)-1)
				goto err;
		} else {
			id_c2w = (iconv_t)-1;
			id_w2c = (iconv_t)-1;
		}

		break;

	case O_INPUTENCODING:
		c2w = sp->conv.id + IC_IE_CHAR2INT;
		w2c = sp->conv.id + IC_IE_TO_UTF16;
		if (!enc)
			enc = O_STR(sp, O_INPUTENCODING);

		if (strcasecmp(codeset(), enc)) {
			if ((id_c2w = iconv_open(codeset(), enc)) ==
			    (iconv_t)-1)
				goto err;
		} else
			id_c2w = (iconv_t)-1;

		/* UTF-16 can not be locale and can not be inputed. */
		if ((id_w2c = iconv_open("utf-16be", enc)) == (iconv_t)-1)
			goto err;

		break;

	default:
		abort();
	}

	if (*c2w != (iconv_t)-1)
		iconv_close(*c2w);
	if (*w2c != (iconv_t)-1)
		iconv_close(*w2c);

	*c2w = id_c2w;
	*w2c = id_w2c;

	F_CLR(sp, SC_CONV_ERROR);
	F_SET(sp, SC_SCR_REFORMAT);

	return 0;
err:
#endif
	switch (option) {
	case O_FILEENCODING:
		FUNC7(sp, M_ERR, "321|File encoding conversion not supported");
		break;
	case O_INPUTENCODING:
		FUNC7(sp, M_ERR, "322|Input encoding conversion not supported");
		break;
	}
	return 1;
}