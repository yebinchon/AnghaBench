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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 size_t FLAG_ID_LENGTH_PRESENT ; 
 size_t FLAG_SHORT_RECORD ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (size_t) ; 
 size_t FUNC2 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC7(u8 flags, const void *type,
					 u8 type_length, void *id,
					 u8 id_length,
					 const struct wpabuf *payload)
{
	struct wpabuf *record;
	size_t total_len;
	int short_record;
	u8 local_flag;
	size_t payload_length = FUNC2(payload);

	short_record = payload_length < 256 ? 1 : 0;

	total_len = 2; /* flag + type length */
	/* payload length */
	total_len += short_record ? sizeof(u8) : sizeof(u32);
	if (id_length > 0)
		total_len += 1;
	total_len += type_length + id_length + payload_length;
	record = FUNC1(total_len);
	if (record == NULL) {
		FUNC0(MSG_ERROR, "NDEF : Failed to allocate "
			   "record for build");
		return NULL;
	}

	local_flag = flags;
	if (id_length > 0)
		local_flag |= FLAG_ID_LENGTH_PRESENT;
	if (short_record)
		local_flag |= FLAG_SHORT_RECORD;
	FUNC6(record, local_flag);

	FUNC6(record, type_length);

	if (short_record)
		FUNC6(record, payload_length);
	else
		FUNC3(record, payload_length);

	if (id_length > 0)
		FUNC6(record, id_length);
	FUNC5(record, type, type_length);
	FUNC5(record, id, id_length);
	FUNC4(record, payload);
	return record;
}