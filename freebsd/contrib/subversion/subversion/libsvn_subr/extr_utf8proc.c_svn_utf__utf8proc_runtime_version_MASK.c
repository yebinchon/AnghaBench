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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  utf8proc_NFC ; 
 int /*<<< orphan*/  utf8proc_NFD ; 
 int /*<<< orphan*/  utf8proc_NFKC ; 
 int /*<<< orphan*/  utf8proc_NFKD ; 
 int /*<<< orphan*/  utf8proc_category_string ; 
 int /*<<< orphan*/  utf8proc_charwidth ; 
 int /*<<< orphan*/  utf8proc_grapheme_break ; 
 int /*<<< orphan*/  utf8proc_tolower ; 
 int /*<<< orphan*/  utf8proc_totitle ; 
 int /*<<< orphan*/  utf8proc_toupper ; 
 char const* FUNC1 () ; 

const char *
FUNC2(void)
{
  /* Unused static function warning removal hack. */
  FUNC0(utf8proc_grapheme_break);
  FUNC0(utf8proc_tolower);
  FUNC0(utf8proc_toupper);
#if UTF8PROC_VERSION_MAJOR >= 2
  SVN_UNUSED(utf8proc_totitle);
#endif
  FUNC0(utf8proc_charwidth);
  FUNC0(utf8proc_category_string);
  FUNC0(utf8proc_NFD);
  FUNC0(utf8proc_NFC);
  FUNC0(utf8proc_NFKD);
  FUNC0(utf8proc_NFKC);

  return FUNC1();
}