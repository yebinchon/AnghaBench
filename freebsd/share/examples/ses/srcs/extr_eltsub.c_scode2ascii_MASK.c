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
typedef  int u_char ;

/* Variables and functions */
#define  SES_OBJSTAT_CRIT 136 
#define  SES_OBJSTAT_NOACCESS 135 
#define  SES_OBJSTAT_NONCRIT 134 
#define  SES_OBJSTAT_NOTAVAIL 133 
#define  SES_OBJSTAT_NOTINSTALLED 132 
#define  SES_OBJSTAT_OK 131 
#define  SES_OBJSTAT_UNKNOWN 130 
#define  SES_OBJSTAT_UNRECOV 129 
#define  SES_OBJSTAT_UNSUPPORTED 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static char *
FUNC1(u_char code)
{
	static char rbuf[32];
	switch (code & 0xf) {
	case SES_OBJSTAT_UNSUPPORTED:
		FUNC0(rbuf, "Unsupported");
		break;
	case SES_OBJSTAT_OK:
		FUNC0(rbuf, "OK");
		break;
	case SES_OBJSTAT_CRIT:
		FUNC0(rbuf, "Critical");
		break;
	case SES_OBJSTAT_NONCRIT:
		FUNC0(rbuf, "Noncritical");
		break;
	case SES_OBJSTAT_UNRECOV:
		FUNC0(rbuf, "Unrecoverable");
		break;
	case SES_OBJSTAT_NOTINSTALLED:
		FUNC0(rbuf, "Not Installed");
		break;
	case SES_OBJSTAT_UNKNOWN:
		FUNC0(rbuf, "Unknown");
		break;
	case SES_OBJSTAT_NOTAVAIL:
		FUNC0(rbuf, "Not Available");
		break;
	case SES_OBJSTAT_NOACCESS:
		FUNC0(rbuf, "No Access Allowed");
		break;
	default:
		FUNC0(rbuf, "<Status 0x%x>", code & 0xf);
		break;
	}
	return (rbuf);
}