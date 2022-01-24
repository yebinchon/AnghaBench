#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpabuf {int dummy; } ;
struct ieee802_1x_mka_participant {void* active; struct ieee802_1x_kay* kay; } ;
struct ieee802_1x_kay {void* active; int /*<<< orphan*/  l2_mka; int /*<<< orphan*/  if_name; } ;
struct ieee802_1x_hdr {int dummy; } ;
struct ieee8023_hdr {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* body_length ) (struct ieee802_1x_mka_participant*) ;scalar_t__ (* body_present ) (struct ieee802_1x_mka_participant*) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 void* TRUE ; 
 scalar_t__ FUNC1 (struct ieee802_1x_mka_participant*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* mka_body_handler ; 
 scalar_t__ FUNC3 (struct ieee802_1x_mka_participant*) ; 
 scalar_t__ FUNC4 (struct ieee802_1x_mka_participant*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 

__attribute__((used)) static int
FUNC11(
	struct ieee802_1x_mka_participant *participant)
{
	struct wpabuf *buf;
	struct ieee802_1x_kay *kay = participant->kay;
	size_t length = 0;
	unsigned int i;

	FUNC6(MSG_DEBUG, "KaY: Encode and send an MKPDU (ifname=%s)",
		   kay->if_name);
	length += sizeof(struct ieee802_1x_hdr) + sizeof(struct ieee8023_hdr);
	for (i = 0; i < FUNC0(mka_body_handler); i++) {
		if (mka_body_handler[i].body_present &&
		    mka_body_handler[i].body_present(participant))
			length += mka_body_handler[i].body_length(participant);
	}

	buf = FUNC7(length);
	if (!buf) {
		FUNC6(MSG_ERROR, "KaY: out of memory");
		return -1;
	}

	if (FUNC1(participant, buf)) {
		FUNC6(MSG_ERROR, "KaY: encode mkpdu fail");
		return -1;
	}

	FUNC5(MSG_MSGDUMP, "KaY: Outgoing MKPDU", buf);
	FUNC2(kay->l2_mka, NULL, 0, FUNC9(buf), FUNC10(buf));
	FUNC8(buf);

	kay->active = TRUE;
	participant->active = TRUE;

	return 0;
}