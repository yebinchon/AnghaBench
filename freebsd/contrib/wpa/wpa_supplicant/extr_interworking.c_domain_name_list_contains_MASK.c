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
typedef  int u8 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int* FUNC3 (struct wpabuf*) ; 
 int FUNC4 (struct wpabuf*) ; 

int FUNC5(struct wpabuf *domain_names,
			      const char *domain, int exact_match)
{
	const u8 *pos, *end;
	size_t len;

	len = FUNC0(domain);
	pos = FUNC3(domain_names);
	end = pos + FUNC4(domain_names);

	while (end - pos > 1) {
		u8 elen;

		elen = *pos++;
		if (elen > end - pos)
			break;

		FUNC2(MSG_DEBUG, "Interworking: AP domain name",
				  pos, elen);
		if (elen == len &&
		    FUNC1(domain, (const char *) pos, len) == 0)
			return 1;
		if (!exact_match && elen > len && pos[elen - len - 1] == '.') {
			const char *ap = (const char *) pos;
			int offset = elen - len;

			if (FUNC1(domain, ap + offset, len) == 0)
				return 1;
		}

		pos += elen;
	}

	return 0;
}