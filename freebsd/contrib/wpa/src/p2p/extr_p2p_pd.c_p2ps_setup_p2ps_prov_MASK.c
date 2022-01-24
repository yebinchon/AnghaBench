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
typedef  void* u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct p2ps_provision {char* info; int /*<<< orphan*/  adv_mac; int /*<<< orphan*/  session_mac; int /*<<< orphan*/  method; void* session_id; void* adv_id; } ;
struct p2p_data {struct p2ps_provision* p2ps_prov; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct p2ps_provision*,int /*<<< orphan*/ ,int) ; 
 struct p2ps_provision* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct p2p_data *p2p, u32 adv_id,
				u32 session_id, u16 method,
				const u8 *session_mac, const u8 *adv_mac)
{
	struct p2ps_provision *tmp;

	if (!p2p->p2ps_prov) {
		p2p->p2ps_prov = FUNC2(sizeof(struct p2ps_provision) + 1);
		if (!p2p->p2ps_prov)
			return -1;
	} else {
		FUNC1(p2p->p2ps_prov, 0, sizeof(struct p2ps_provision) + 1);
	}

	tmp = p2p->p2ps_prov;
	tmp->adv_id = adv_id;
	tmp->session_id = session_id;
	tmp->method = method;
	FUNC0(tmp->session_mac, session_mac, ETH_ALEN);
	FUNC0(tmp->adv_mac, adv_mac, ETH_ALEN);
	tmp->info[0] = '\0';

	return 0;
}