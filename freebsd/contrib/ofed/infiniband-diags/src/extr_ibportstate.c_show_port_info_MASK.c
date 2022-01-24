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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  IB_PORT_LID_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_ACTIVE_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_ENABLED_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_EXT_ACTIVE_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_EXT_ENABLED_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_EXT_SUPPORTED_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_SUPPORTED_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_WIDTH_ACTIVE_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_WIDTH_ENABLED_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_WIDTH_SUPPORTED_F ; 
 int /*<<< orphan*/  IB_PORT_LMC_F ; 
 int /*<<< orphan*/  IB_PORT_MKEY_F ; 
 int /*<<< orphan*/  IB_PORT_MKEY_LEASE_F ; 
 int /*<<< orphan*/  IB_PORT_MKEY_PROT_BITS_F ; 
 int /*<<< orphan*/  IB_PORT_SMLID_F ; 
 int /*<<< orphan*/  NOT_DISPLAYED_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,char*) ; 
 scalar_t__ show_keys ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(ib_portid_t * dest, uint8_t * data, int portnum,
			   int espeed_cap, int is_switch)
{
	char buf[2300];
	char val[64];

	FUNC2(buf, sizeof buf, data, sizeof *data);
	FUNC0(data, IB_PORT_LID_F, val);
	FUNC1(IB_PORT_LID_F, buf + FUNC7(buf),
		       sizeof buf - FUNC7(buf), val);
	FUNC6(buf + FUNC7(buf), "%s", "\n");
	FUNC0(data, IB_PORT_SMLID_F, val);
	FUNC1(IB_PORT_SMLID_F, buf + FUNC7(buf),
		       sizeof buf - FUNC7(buf), val);
	FUNC6(buf + FUNC7(buf), "%s", "\n");
	FUNC0(data, IB_PORT_LMC_F, val);
	FUNC1(IB_PORT_LMC_F, buf + FUNC7(buf),
		       sizeof buf - FUNC7(buf), val);
	FUNC6(buf + FUNC7(buf), "%s", "\n");
	FUNC0(data, IB_PORT_LINK_WIDTH_SUPPORTED_F, val);
	FUNC1(IB_PORT_LINK_WIDTH_SUPPORTED_F, buf + FUNC7(buf),
		       sizeof buf - FUNC7(buf), val);
	FUNC6(buf + FUNC7(buf), "%s", "\n");
	FUNC0(data, IB_PORT_LINK_WIDTH_ENABLED_F, val);
	FUNC1(IB_PORT_LINK_WIDTH_ENABLED_F, buf + FUNC7(buf),
		       sizeof buf - FUNC7(buf), val);
	FUNC6(buf + FUNC7(buf), "%s", "\n");
	FUNC0(data, IB_PORT_LINK_WIDTH_ACTIVE_F, val);
	FUNC1(IB_PORT_LINK_WIDTH_ACTIVE_F, buf + FUNC7(buf),
		       sizeof buf - FUNC7(buf), val);
	FUNC6(buf + FUNC7(buf), "%s", "\n");
	FUNC0(data, IB_PORT_LINK_SPEED_SUPPORTED_F, val);
	FUNC1(IB_PORT_LINK_SPEED_SUPPORTED_F, buf + FUNC7(buf),
		       sizeof buf - FUNC7(buf), val);
	FUNC6(buf + FUNC7(buf), "%s", "\n");
	FUNC0(data, IB_PORT_LINK_SPEED_ENABLED_F, val);
	FUNC1(IB_PORT_LINK_SPEED_ENABLED_F, buf + FUNC7(buf),
		       sizeof buf - FUNC7(buf), val);
	FUNC6(buf + FUNC7(buf), "%s", "\n");
	FUNC0(data, IB_PORT_LINK_SPEED_ACTIVE_F, val);
	FUNC1(IB_PORT_LINK_SPEED_ACTIVE_F, buf + FUNC7(buf),
		       sizeof buf - FUNC7(buf), val);
	FUNC6(buf + FUNC7(buf), "%s", "\n");
	if (espeed_cap) {
		FUNC0(data, IB_PORT_LINK_SPEED_EXT_SUPPORTED_F, val);
		FUNC1(IB_PORT_LINK_SPEED_EXT_SUPPORTED_F,
			       buf + FUNC7(buf), sizeof buf - FUNC7(buf),
			       val);
		FUNC6(buf + FUNC7(buf), "%s", "\n");
		FUNC0(data, IB_PORT_LINK_SPEED_EXT_ENABLED_F, val);
		FUNC1(IB_PORT_LINK_SPEED_EXT_ENABLED_F,
			       buf + FUNC7(buf), sizeof buf - FUNC7(buf),
			       val);
		FUNC6(buf + FUNC7(buf), "%s", "\n");
		FUNC0(data, IB_PORT_LINK_SPEED_EXT_ACTIVE_F, val);
		FUNC1(IB_PORT_LINK_SPEED_EXT_ACTIVE_F,
			       buf + FUNC7(buf), sizeof buf - FUNC7(buf),
			       val);
		FUNC6(buf + FUNC7(buf), "%s", "\n");
	}
	if (!is_switch || portnum == 0) {
		if (show_keys) {
			FUNC0(data, IB_PORT_MKEY_F, val);
			FUNC1(IB_PORT_MKEY_F, buf + FUNC7(buf),
				       sizeof buf - FUNC7(buf), val);
		} else
			FUNC5(buf+FUNC7(buf), sizeof(buf)-FUNC7(buf),
				      IB_PORT_MKEY_F, 32, NOT_DISPLAYED_STR);
		FUNC6(buf+FUNC7(buf), "%s", "\n");
		FUNC0(data, IB_PORT_MKEY_LEASE_F, val);
		FUNC1(IB_PORT_MKEY_LEASE_F, buf + FUNC7(buf),
			       sizeof buf - FUNC7(buf), val);
		FUNC6(buf+FUNC7(buf), "%s", "\n");
		FUNC0(data, IB_PORT_MKEY_PROT_BITS_F, val);
		FUNC1(IB_PORT_MKEY_PROT_BITS_F, buf + FUNC7(buf),
			       sizeof buf - FUNC7(buf), val);
		FUNC6(buf+FUNC7(buf), "%s", "\n");
	}

	FUNC4("# Port info: %s port %d\n%s", FUNC3(dest), portnum, buf);
}