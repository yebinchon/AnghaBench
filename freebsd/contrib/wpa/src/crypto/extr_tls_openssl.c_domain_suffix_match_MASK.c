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
typedef  char u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(const u8 *val, size_t len, const char *match,
			       size_t match_len, int full)
{
	size_t i;

	/* Check for embedded nuls that could mess up suffix matching */
	for (i = 0; i < len; i++) {
		if (val[i] == '\0') {
			FUNC1(MSG_DEBUG, "TLS: Embedded null in a string - reject");
			return 0;
		}
	}

	if (match_len > len || (full && match_len != len))
		return 0;

	if (FUNC0((const char *) val + len - match_len, match,
			   match_len) != 0)
		return 0; /* no match */

	if (match_len == len)
		return 1; /* exact match */

	if (val[len - match_len - 1] == '.')
		return 1; /* full label match completes suffix match */

	FUNC1(MSG_DEBUG, "TLS: Reject due to incomplete label match");
	return 0;
}