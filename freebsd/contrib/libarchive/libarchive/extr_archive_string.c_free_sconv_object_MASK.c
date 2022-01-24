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
struct archive_string_conv {scalar_t__ cd; scalar_t__ cd_w; int /*<<< orphan*/  utftmp; struct archive_string_conv* to_charset; struct archive_string_conv* from_charset; } ;
typedef  scalar_t__ iconv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct archive_string_conv *sc)
{
	FUNC1(sc->from_charset);
	FUNC1(sc->to_charset);
	FUNC0(&sc->utftmp);
#if HAVE_ICONV
	if (sc->cd != (iconv_t)-1)
		iconv_close(sc->cd);
	if (sc->cd_w != (iconv_t)-1)
		iconv_close(sc->cd_w);
#endif
	FUNC1(sc);
}