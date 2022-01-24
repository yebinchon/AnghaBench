#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u16 ;
struct ikev2_transform {int type; int transform_type; int /*<<< orphan*/  const* transform_id; int /*<<< orphan*/  const* transform_length; } ;
struct ikev2_proposal_data {void* dh; void* integ; void* prf; void* encr; } ;
struct TYPE_2__ {void* encr; void* prf; void* integ; void* dh; } ;
struct ikev2_initiator_data {TYPE_1__ proposal; } ;

/* Variables and functions */
 void* ENCR_AES_CBC ; 
#define  IKEV2_TRANSFORM_DH 131 
#define  IKEV2_TRANSFORM_ENCR 130 
#define  IKEV2_TRANSFORM_INTEG 129 
#define  IKEV2_TRANSFORM_PRF 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(struct ikev2_initiator_data *data,
				 struct ikev2_proposal_data *prop,
				 const u8 *pos, const u8 *end)
{
	int transform_len;
	const struct ikev2_transform *t;
	u16 transform_id;
	const u8 *tend;

	if (end - pos < (int) sizeof(*t)) {
		FUNC6(MSG_INFO, "IKEV2: Too short transform");
		return -1;
	}

	t = (const struct ikev2_transform *) pos;
	transform_len = FUNC0(t->transform_length);
	if (transform_len < (int) sizeof(*t) || transform_len > end - pos) {
		FUNC6(MSG_INFO, "IKEV2: Invalid transform length %d",
			   transform_len);
		return -1;
	}
	tend = pos + transform_len;

	transform_id = FUNC0(t->transform_id);

	FUNC6(MSG_DEBUG, "IKEV2:   Transform:");
	FUNC6(MSG_DEBUG, "IKEV2:     Type: %d  Transform Length: %d  "
		   "Transform Type: %d  Transform ID: %d",
		   t->type, transform_len, t->transform_type, transform_id);

	if (t->type != 0 && t->type != 3) {
		FUNC6(MSG_INFO, "IKEV2: Unexpected Transform type");
		return -1;
	}

	pos = (const u8 *) (t + 1);
	if (pos < tend) {
		FUNC5(MSG_DEBUG, "IKEV2:     Transform Attributes",
			    pos, tend - pos);
	}

	switch (t->transform_type) {
	case IKEV2_TRANSFORM_ENCR:
		if (FUNC2(transform_id) &&
		    transform_id == data->proposal.encr) {
			if (transform_id == ENCR_AES_CBC) {
				if (tend - pos != 4) {
					FUNC6(MSG_DEBUG, "IKEV2: No "
						   "Transform Attr for AES");
					break;
				}
				if (FUNC0(pos) != 0x800e) {
					FUNC6(MSG_DEBUG, "IKEV2: Not a "
						   "Key Size attribute for "
						   "AES");
					break;
				}
				if (FUNC0(pos + 2) != 128) {
					FUNC6(MSG_DEBUG, "IKEV2: "
						   "Unsupported AES key size "
						   "%d bits",
						   FUNC0(pos + 2));
					break;
				}
			}
			prop->encr = transform_id;
		}
		break;
	case IKEV2_TRANSFORM_PRF:
		if (FUNC4(transform_id) &&
		    transform_id == data->proposal.prf)
			prop->prf = transform_id;
		break;
	case IKEV2_TRANSFORM_INTEG:
		if (FUNC3(transform_id) &&
		    transform_id == data->proposal.integ)
			prop->integ = transform_id;
		break;
	case IKEV2_TRANSFORM_DH:
		if (FUNC1(transform_id) &&
		    transform_id == data->proposal.dh)
			prop->dh = transform_id;
		break;
	}

	return transform_len;
}