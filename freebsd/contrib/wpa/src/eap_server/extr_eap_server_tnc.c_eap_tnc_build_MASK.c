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
struct eap_tnc_data {int /*<<< orphan*/  tncs; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC10 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,char*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC12(struct eap_sm *sm,
				     struct eap_tnc_data *data)
{
	struct wpabuf *req;
	u8 *rpos, *rpos1;
	size_t rlen;
	char *start_buf, *end_buf;
	size_t start_len, end_len;
	size_t imv_len;

	imv_len = FUNC5(data->tncs);

	start_buf = FUNC4(data->tncs);
	if (start_buf == NULL)
		return NULL;
	start_len = FUNC1(start_buf);
	end_buf = FUNC3();
	if (end_buf == NULL) {
		FUNC0(start_buf);
		return NULL;
	}
	end_len = FUNC1(end_buf);

	rlen = start_len + imv_len + end_len;
	req = FUNC7(rlen);
	if (req == NULL) {
		FUNC0(start_buf);
		FUNC0(end_buf);
		return NULL;
	}

	FUNC11(req, start_buf, start_len);
	FUNC0(start_buf);

	rpos1 = FUNC10(req, 0);
	rpos = FUNC2(data->tncs, rpos1);
	FUNC10(req, rpos - rpos1);

	FUNC11(req, end_buf, end_len);
	FUNC0(end_buf);

	FUNC6(MSG_MSGDUMP, "EAP-TNC: Request",
			  FUNC8(req), FUNC9(req));

	return req;
}