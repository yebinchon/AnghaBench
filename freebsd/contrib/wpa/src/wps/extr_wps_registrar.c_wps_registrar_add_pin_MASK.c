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
typedef  int /*<<< orphan*/  const u8 ;
struct TYPE_2__ {int sec; } ;
struct wps_uuid_pin {int wildcard_uuid; size_t pin_len; int /*<<< orphan*/  list; TYPE_1__ expiration; int /*<<< orphan*/  flags; int /*<<< orphan*/ * pin; int /*<<< orphan*/  uuid; int /*<<< orphan*/  enrollee_addr; } ;
struct wps_registrar {int selected_registrar; scalar_t__ pbc; int /*<<< orphan*/  pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PIN_EXPIRES ; 
 int /*<<< orphan*/  WPS_PBC_WALK_TIME ; 
 int /*<<< orphan*/  WPS_UUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wps_registrar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wps_registrar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wps_uuid_pin*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,size_t) ; 
 struct wps_uuid_pin* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wps_registrar*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC13 (struct wps_registrar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wps_registrar_set_selected_timeout ; 

int FUNC14(struct wps_registrar *reg, const u8 *addr,
			  const u8 *uuid, const u8 *pin, size_t pin_len,
			  int timeout)
{
	struct wps_uuid_pin *p;

	p = FUNC7(sizeof(*p));
	if (p == NULL)
		return -1;
	if (addr)
		FUNC5(p->enrollee_addr, addr, ETH_ALEN);
	if (uuid == NULL)
		p->wildcard_uuid = 1;
	else
		FUNC5(p->uuid, uuid, WPS_UUID_LEN);
	p->pin = FUNC6(pin, pin_len);
	if (p->pin == NULL) {
		FUNC3(p);
		return -1;
	}
	p->pin_len = pin_len;

	if (timeout) {
		p->flags |= PIN_EXPIRES;
		FUNC4(&p->expiration);
		p->expiration.sec += timeout;
	}

	if (p->wildcard_uuid)
		FUNC12(reg);

	FUNC0(&reg->pins, &p->list);

	FUNC10(MSG_DEBUG, "WPS: A new PIN configured (timeout=%d)",
		   timeout);
	FUNC8(MSG_DEBUG, "WPS: UUID", uuid, WPS_UUID_LEN);
	FUNC9(MSG_DEBUG, "WPS: PIN", pin, pin_len);
	reg->selected_registrar = 1;
	reg->pbc = 0;
	if (addr)
		FUNC11(reg, addr);
	else
		FUNC11(
			reg, (u8 *) "\xff\xff\xff\xff\xff\xff");
	FUNC13(reg, 0);
	FUNC1(wps_registrar_set_selected_timeout, reg, NULL);
	FUNC2(WPS_PBC_WALK_TIME, 0,
			       wps_registrar_set_selected_timeout,
			       reg, NULL);

	return 0;
}