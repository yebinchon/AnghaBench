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
 int /*<<< orphan*/  DPP_ATTR_R_BOOTSTRAP_KEY_HASH ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wpabuf *msg,
						const u8 *hash)
{
	if (hash) {
		FUNC0(MSG_DEBUG, "DPP: R-Bootstrap Key Hash");
		FUNC2(msg, DPP_ATTR_R_BOOTSTRAP_KEY_HASH);
		FUNC2(msg, SHA256_MAC_LEN);
		FUNC1(msg, hash, SHA256_MAC_LEN);
	}
}