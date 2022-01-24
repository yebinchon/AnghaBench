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
struct wpabuf {int dummy; } ;
struct ikev2_transform {int type; int /*<<< orphan*/  transform_id; int /*<<< orphan*/  transform_type; int /*<<< orphan*/  transform_length; } ;
struct ikev2_proposal {int num_transforms; int /*<<< orphan*/  proposal_length; int /*<<< orphan*/  protocol_id; int /*<<< orphan*/  proposal_num; } ;
struct ikev2_payload_hdr {int /*<<< orphan*/  payload_length; scalar_t__ flags; int /*<<< orphan*/  next_payload; } ;
struct TYPE_2__ {size_t encr; size_t prf; size_t integ; size_t dh; int /*<<< orphan*/  proposal_num; } ;
struct ikev2_initiator_data {TYPE_1__ proposal; } ;

/* Variables and functions */
 size_t ENCR_AES_CBC ; 
 int /*<<< orphan*/  IKEV2_PROTOCOL_IKE ; 
 int /*<<< orphan*/  IKEV2_TRANSFORM_DH ; 
 int /*<<< orphan*/  IKEV2_TRANSFORM_ENCR ; 
 int /*<<< orphan*/  IKEV2_TRANSFORM_INTEG ; 
 int /*<<< orphan*/  IKEV2_TRANSFORM_PRF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC4(struct ikev2_initiator_data *data,
			    struct wpabuf *msg, u8 next_payload)
{
	struct ikev2_payload_hdr *phdr;
	size_t plen;
	struct ikev2_proposal *p;
	struct ikev2_transform *t;

	FUNC1(MSG_DEBUG, "IKEV2: Adding SAi payload");

	/* SAi1 - RFC 4306, Sect. 2.7 and 3.3 */
	phdr = FUNC2(msg, sizeof(*phdr));
	phdr->next_payload = next_payload;
	phdr->flags = 0;

	/* TODO: support for multiple proposals */
	p = FUNC2(msg, sizeof(*p));
	p->proposal_num = data->proposal.proposal_num;
	p->protocol_id = IKEV2_PROTOCOL_IKE;
	p->num_transforms = 4;

	t = FUNC2(msg, sizeof(*t));
	t->type = 3;
	t->transform_type = IKEV2_TRANSFORM_ENCR;
	FUNC0(t->transform_id, data->proposal.encr);
	if (data->proposal.encr == ENCR_AES_CBC) {
		/* Transform Attribute: Key Len = 128 bits */
		FUNC3(msg, 0x800e); /* AF=1, AttrType=14 */
		FUNC3(msg, 128); /* 128-bit key */
	}
	plen = (u8 *) FUNC2(msg, 0) - (u8 *) t;
	FUNC0(t->transform_length, plen);

	t = FUNC2(msg, sizeof(*t));
	t->type = 3;
	FUNC0(t->transform_length, sizeof(*t));
	t->transform_type = IKEV2_TRANSFORM_PRF;
	FUNC0(t->transform_id, data->proposal.prf);

	t = FUNC2(msg, sizeof(*t));
	t->type = 3;
	FUNC0(t->transform_length, sizeof(*t));
	t->transform_type = IKEV2_TRANSFORM_INTEG;
	FUNC0(t->transform_id, data->proposal.integ);

	t = FUNC2(msg, sizeof(*t));
	FUNC0(t->transform_length, sizeof(*t));
	t->transform_type = IKEV2_TRANSFORM_DH;
	FUNC0(t->transform_id, data->proposal.dh);

	plen = (u8 *) FUNC2(msg, 0) - (u8 *) p;
	FUNC0(p->proposal_length, plen);

	plen = (u8 *) FUNC2(msg, 0) - (u8 *) phdr;
	FUNC0(phdr->payload_length, plen);

	return 0;
}