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
struct eap_teap_data {int teap_version; int peer_version; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC1(struct eap_sm *sm, void *priv,
				    int peer_version)
{
	struct eap_teap_data *data = priv;

	if (peer_version < 1) {
		/* Version 1 was the first defined version, so reject 0 */
		FUNC0(MSG_INFO,
			   "EAP-TEAP: Peer used unknown TEAP version %u",
			   peer_version);
		return -1;
	}

	if (peer_version < data->teap_version) {
		FUNC0(MSG_DEBUG, "EAP-TEAP: peer ver=%u, own ver=%u; "
			   "use version %u",
			   peer_version, data->teap_version, peer_version);
		data->teap_version = peer_version;
	}

	data->peer_version = peer_version;

	return 0;
}