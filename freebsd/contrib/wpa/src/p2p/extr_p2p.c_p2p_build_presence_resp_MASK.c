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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_ATTR_NOTICE_OF_ABSENCE ; 
 int /*<<< orphan*/  P2P_PRESENCE_RESP ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC9(u8 status, const u8 *noa,
					       size_t noa_len, u8 dialog_token)
{
	struct wpabuf *resp;
	u8 *len;

	resp = FUNC5(100 + noa_len);
	if (resp == NULL)
		return NULL;

	FUNC0(resp, P2P_PRESENCE_RESP, dialog_token);
	len = FUNC1(resp);
	FUNC3(resp, status);
	if (noa) {
		FUNC8(resp, P2P_ATTR_NOTICE_OF_ABSENCE);
		FUNC7(resp, noa_len);
		FUNC6(resp, noa, noa_len);
	} else
		FUNC2(resp, 0, 0, 0, NULL, NULL);
	FUNC4(resp, len);

	return resp;
}