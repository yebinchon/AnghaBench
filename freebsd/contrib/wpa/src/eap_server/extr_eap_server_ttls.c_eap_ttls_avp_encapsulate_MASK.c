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
typedef  int /*<<< orphan*/  u32 ;
struct wpabuf {int dummy; } ;
struct ttls_avp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct wpabuf* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct wpabuf *resp,
						u32 avp_code, int mandatory)
{
	struct wpabuf *avp;
	u8 *pos;

	avp = FUNC3(sizeof(struct ttls_avp) + FUNC6(resp) + 4);
	if (avp == NULL) {
		FUNC4(resp);
		return NULL;
	}

	pos = FUNC1(FUNC7(avp), avp_code, 0, mandatory,
			       FUNC6(resp));
	FUNC2(pos, FUNC5(resp), FUNC6(resp));
	pos += FUNC6(resp);
	FUNC0((const u8 *) FUNC5(avp), pos);
	FUNC4(resp);
	FUNC8(avp, pos - (u8 *) FUNC5(avp));
	return avp;
}