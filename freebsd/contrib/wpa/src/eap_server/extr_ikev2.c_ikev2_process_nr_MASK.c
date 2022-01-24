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
struct ikev2_initiator_data {size_t r_nonce_len; int /*<<< orphan*/  r_nonce; } ;

/* Variables and functions */
 size_t IKEV2_NONCE_MAX_LEN ; 
 size_t IKEV2_NONCE_MIN_LEN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct ikev2_initiator_data *data,
			    const u8 *nr, size_t nr_len)
{
	if (nr == NULL) {
		FUNC2(MSG_INFO, "IKEV2: Nr not received");
		return -1;
	}

	if (nr_len < IKEV2_NONCE_MIN_LEN || nr_len > IKEV2_NONCE_MAX_LEN) {
		FUNC2(MSG_INFO, "IKEV2: Invalid Nr length %ld",
			   (long) nr_len);
		return -1;
	}

	data->r_nonce_len = nr_len;
	FUNC0(data->r_nonce, nr, nr_len);
	FUNC1(MSG_MSGDUMP, "IKEV2: Nr",
		    data->r_nonce, data->r_nonce_len);

	return 0;
}