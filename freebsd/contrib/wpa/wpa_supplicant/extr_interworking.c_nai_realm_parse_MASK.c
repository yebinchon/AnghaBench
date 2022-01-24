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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct wpabuf {int dummy; } ;
struct nai_realm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nai_realm*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (struct nai_realm*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 struct nai_realm* FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/ * FUNC5 (struct wpabuf*) ; 
 size_t FUNC6 (struct wpabuf*) ; 

__attribute__((used)) static struct nai_realm * FUNC7(struct wpabuf *anqp, u16 *count)
{
	struct nai_realm *realm;
	const u8 *pos, *end;
	u16 i, num;
	size_t left;

	if (anqp == NULL)
		return NULL;
	left = FUNC6(anqp);
	if (left < 2)
		return NULL;

	pos = FUNC5(anqp);
	end = pos + left;
	num = FUNC0(pos);
	FUNC4(MSG_DEBUG, "NAI Realm Count: %u", num);
	pos += 2;
	left -= 2;

	if (num > left / 5) {
		FUNC4(MSG_DEBUG, "Invalid NAI Realm Count %u - not "
			   "enough data (%u octets) for that many realms",
			   num, (unsigned int) left);
		return NULL;
	}

	realm = FUNC3(num, sizeof(struct nai_realm));
	if (realm == NULL)
		return NULL;

	for (i = 0; i < num; i++) {
		pos = FUNC2(&realm[i], pos, end);
		if (pos == NULL) {
			FUNC1(realm, num);
			return NULL;
		}
	}

	*count = num;
	return realm;
}