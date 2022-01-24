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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (size_t) ; 
 scalar_t__ wpa_debug_level ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,char const*,char*) ; 

__attribute__((used)) static void FUNC9(X509 *cert, const char *title)
{
#ifndef CONFIG_NO_STDOUT_DEBUG
	BIO *out;
	size_t rlen;
	char *txt;
	int res;

	if (wpa_debug_level > MSG_DEBUG)
		return;

	out = FUNC2(FUNC4());
	if (!out)
		return;

	FUNC5(out, cert);
	rlen = FUNC0(out);
	txt = FUNC7(rlen + 1);
	if (!txt) {
		FUNC1(out);
		return;
	}

	res = FUNC3(out, txt, rlen);
	if (res > 0) {
		txt[res] = '\0';
		FUNC8(MSG_DEBUG, "OpenSSL: %s\n%s", title, txt);
	}
	FUNC6(txt);

	FUNC1(out);
#endif /* CONFIG_NO_STDOUT_DEBUG */
}