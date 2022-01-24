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
struct wpabuf {int dummy; } ;
struct p2p_data {int p2ps_seek_count; int /*<<< orphan*/  p2ps_seek_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int P2PS_HASH_LEN ; 
 int /*<<< orphan*/  P2P_ATTR_SERVICE_HASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC4(struct wpabuf *buf, struct p2p_data *p2p)
{
	if (!p2p)
		return;

	/* Service Hash */
	FUNC3(buf, P2P_ATTR_SERVICE_HASH);
	FUNC2(buf, p2p->p2ps_seek_count * P2PS_HASH_LEN);
	FUNC1(buf, p2p->p2ps_seek_hash,
			p2p->p2ps_seek_count * P2PS_HASH_LEN);
	FUNC0(MSG_DEBUG, "P2P: * Service Hash",
		    p2p->p2ps_seek_hash, p2p->p2ps_seek_count * P2PS_HASH_LEN);
}