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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  LINE_SPLICE ; 
 char* PUTS_FMT ; 
 char* FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(char const * text, bool plain, FILE * fp)
{
    if (plain) {
#ifdef ENABLE_NLS
#ifdef HAVE_LIBINTL_H
#ifdef DEBUG_ENABLED
#undef gettext
#endif
        char * buf = dgettext("libopts", text);
        if (buf == text)
            text = gettext(text);
#endif /* HAVE_LIBINTL_H */
#endif /* ENABLE_NLS */
        FUNC3(text, fp);
    }

    else {
        char const * t = FUNC5(text, LINE_SPLICE);
        FUNC2(fp, PUTS_FMT, t);
        FUNC0(t);
    }
}