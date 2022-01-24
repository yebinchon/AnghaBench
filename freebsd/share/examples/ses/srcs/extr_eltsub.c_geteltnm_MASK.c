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

/* Variables and functions */
#define  ELMTYP_ALARM 153 
#define  ELMTYP_AMMETER 152 
#define  ELMTYP_ARRAY_DEV 151 
#define  ELMTYP_COMPORT 150 
#define  ELMTYP_DEVICE 149 
#define  ELMTYP_DISPLAY 148 
#define  ELMTYP_DOORLOCK 147 
#define  ELMTYP_ENCLOSURE 146 
#define  ELMTYP_ESCC 145 
#define  ELMTYP_FAN 144 
#define  ELMTYP_INV_OP_REASON 143 
#define  ELMTYP_KEYPAD 142 
#define  ELMTYP_LANGUAGE 141 
#define  ELMTYP_NVRAM 140 
#define  ELMTYP_POWER 139 
#define  ELMTYP_SAS_CONN 138 
#define  ELMTYP_SAS_EXP 137 
#define  ELMTYP_SCC 136 
#define  ELMTYP_SCSIXVR 135 
#define  ELMTYP_SCSI_INI 134 
#define  ELMTYP_SCSI_TGT 133 
#define  ELMTYP_SUBENC 132 
#define  ELMTYP_THERM 131 
#define  ELMTYP_UNSPECIFIED 130 
#define  ELMTYP_UPS 129 
#define  ELMTYP_VOM 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

char *
FUNC1(int type)
{
	static char rbuf[132];

	switch (type) {
	case ELMTYP_UNSPECIFIED:
		FUNC0(rbuf, "Unspecified");
		break;
	case ELMTYP_DEVICE:
		FUNC0(rbuf, "Device Slot");
		break;
	case ELMTYP_POWER:
		FUNC0(rbuf, "Power Supply");
		break;
	case ELMTYP_FAN:
		FUNC0(rbuf, "Cooling");
		break;
	case ELMTYP_THERM:
		FUNC0(rbuf, "Temperature Sensors");
		break;
	case ELMTYP_DOORLOCK:
		FUNC0(rbuf, "Door Lock");
		break;
	case ELMTYP_ALARM:
		FUNC0(rbuf, "Audible alarm");
		break;
	case ELMTYP_ESCC:
		FUNC0(rbuf, "Enclosure Services Controller Electronics");
		break;
	case ELMTYP_SCC:
		FUNC0(rbuf, "SCC Controller Electronics");
		break;
	case ELMTYP_NVRAM:
		FUNC0(rbuf, "Nonvolatile Cache");
		break;
	case ELMTYP_INV_OP_REASON:
		FUNC0(rbuf, "Invalid Operation Reason");
		break;
	case ELMTYP_UPS:
		FUNC0(rbuf, "Uninterruptible Power Supply");
		break;
	case ELMTYP_DISPLAY:
		FUNC0(rbuf, "Display");
		break;
	case ELMTYP_KEYPAD:
		FUNC0(rbuf, "Key Pad Entry");
		break;
	case ELMTYP_ENCLOSURE:
		FUNC0(rbuf, "Enclosure");
		break;
	case ELMTYP_SCSIXVR:
		FUNC0(rbuf, "SCSI Port/Transceiver");
		break;
	case ELMTYP_LANGUAGE:
		FUNC0(rbuf, "Language");
		break;
	case ELMTYP_COMPORT:
		FUNC0(rbuf, "Communication Port");
		break;
	case ELMTYP_VOM:
		FUNC0(rbuf, "Voltage Sensor");
		break;
	case ELMTYP_AMMETER:
		FUNC0(rbuf, "Current Sensor");
		break;
	case ELMTYP_SCSI_TGT:
		FUNC0(rbuf, "SCSI Target Port");
		break;
	case ELMTYP_SCSI_INI:
		FUNC0(rbuf, "SCSI Initiator Port");
		break;
	case ELMTYP_SUBENC:
		FUNC0(rbuf, "Simple Subenclosure");
		break;
	case ELMTYP_ARRAY_DEV:
		FUNC0(rbuf, "Array Device Slot");
		break;
	case ELMTYP_SAS_EXP:
		FUNC0(rbuf, "SAS Expander");
		break;
	case ELMTYP_SAS_CONN:
		FUNC0(rbuf, "SAS Connector");
		break;
	default:
		(void) FUNC0(rbuf, "<Type 0x%x>", type);
		break;
	}
	return (rbuf);
}