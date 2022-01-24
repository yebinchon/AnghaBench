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
typedef  int ServerOpCodes ;

/* Variables and functions */
 char const* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  multistate_addressfamily ; 
 int /*<<< orphan*/  multistate_compression ; 
 int /*<<< orphan*/  multistate_gatewayports ; 
 int /*<<< orphan*/  multistate_permitrootlogin ; 
 int /*<<< orphan*/  multistate_tcpfwd ; 
#define  sAddressFamily 134 
#define  sAllowStreamLocalForwarding 133 
#define  sAllowTcpForwarding 132 
#define  sCompression 131 
#define  sFingerprintHash 130 
#define  sGatewayPorts 129 
#define  sPermitRootLogin 128 
 char const* FUNC1 (int) ; 

__attribute__((used)) static const char *
FUNC2(ServerOpCodes code, int val)
{
	if (val == -1)
		return "unset";
	switch (code) {
	case sAddressFamily:
		return FUNC0(val, multistate_addressfamily);
	case sPermitRootLogin:
		return FUNC0(val, multistate_permitrootlogin);
	case sGatewayPorts:
		return FUNC0(val, multistate_gatewayports);
	case sCompression:
		return FUNC0(val, multistate_compression);
	case sAllowTcpForwarding:
		return FUNC0(val, multistate_tcpfwd);
	case sAllowStreamLocalForwarding:
		return FUNC0(val, multistate_tcpfwd);
	case sFingerprintHash:
		return FUNC1(val);
	default:
		switch (val) {
		case 0:
			return "no";
		case 1:
			return "yes";
		default:
			return "UNKNOWN";
		}
	}
}