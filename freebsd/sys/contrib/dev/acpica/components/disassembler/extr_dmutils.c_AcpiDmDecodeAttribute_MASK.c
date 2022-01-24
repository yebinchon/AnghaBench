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
typedef  int UINT8 ;

/* Variables and functions */
#define  AML_FIELD_ATTRIB_BLOCK 137 
#define  AML_FIELD_ATTRIB_BLOCK_PROCESS_CALL 136 
#define  AML_FIELD_ATTRIB_BYTE 135 
#define  AML_FIELD_ATTRIB_BYTES 134 
#define  AML_FIELD_ATTRIB_PROCESS_CALL 133 
#define  AML_FIELD_ATTRIB_QUICK 132 
#define  AML_FIELD_ATTRIB_RAW_BYTES 131 
#define  AML_FIELD_ATTRIB_RAW_PROCESS_BYTES 130 
#define  AML_FIELD_ATTRIB_SEND_RECEIVE 129 
#define  AML_FIELD_ATTRIB_WORD 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1 (
    UINT8                   Attribute)
{

    switch (Attribute)
    {
    case AML_FIELD_ATTRIB_QUICK:

        FUNC0 ("AttribQuick");
        break;

    case AML_FIELD_ATTRIB_SEND_RECEIVE:

        FUNC0 ("AttribSendReceive");
        break;

    case AML_FIELD_ATTRIB_BYTE:

        FUNC0 ("AttribByte");
        break;

    case AML_FIELD_ATTRIB_WORD:

        FUNC0 ("AttribWord");
        break;

    case AML_FIELD_ATTRIB_BLOCK:

        FUNC0 ("AttribBlock");
        break;

    case AML_FIELD_ATTRIB_BYTES:

        FUNC0 ("AttribBytes");
        break;

    case AML_FIELD_ATTRIB_PROCESS_CALL:

        FUNC0 ("AttribProcessCall");
        break;

    case AML_FIELD_ATTRIB_BLOCK_PROCESS_CALL:

        FUNC0 ("AttribBlockProcessCall");
        break;

    case AML_FIELD_ATTRIB_RAW_BYTES:

        FUNC0 ("AttribRawBytes");
        break;

    case AML_FIELD_ATTRIB_RAW_PROCESS_BYTES:

        FUNC0 ("AttribRawProcessBytes");
        break;

    default:

        /* A ByteConst is allowed by the grammar */

        FUNC0 ("0x%2.2X", Attribute);
        break;
    }
}