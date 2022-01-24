#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int UINT8 ;
struct TYPE_11__ {scalar_t__ Pointer; } ;
struct TYPE_9__ {int Value; } ;
struct TYPE_8__ {scalar_t__ Pointer; } ;
struct TYPE_10__ {int Type; TYPE_2__ Integer; TYPE_1__ Buffer; } ;
typedef  TYPE_3__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_4__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_BUFFER 129 
#define  ACPI_TYPE_INTEGER 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 

UINT8
FUNC7(ACPI_HANDLE h, uint8_t *uuid, int revision)
{
    /*
     * ACPI spec 9.1.1 defines this.
     *
     * "Arg2: Function Index Represents a specific function whose meaning is
     * specific to the UUID and Revision ID. Function indices should start
     * with 1. Function number zero is a query function (see the special
     * return code defined below)."
     */
    ACPI_BUFFER buf;
    ACPI_OBJECT *obj;
    UINT8 ret = 0;

    if (!FUNC2(FUNC6(h, uuid, revision, 0, NULL, &buf))) {
	FUNC1(("Failed to enumerate DSM functions\n"));
	return (0);
    }

    obj = (ACPI_OBJECT *)buf.Pointer;
    FUNC5(obj, ("Object not allowed to be NULL\n"));

    /*
     * From ACPI 6.2 spec 9.1.1:
     * If Function Index = 0, a Buffer containing a function index bitfield.
     * Otherwise, the return value and type depends on the UUID and revision
     * ID (see below).
     */
    switch (obj->Type) {
    case ACPI_TYPE_BUFFER:
	ret = *(uint8_t *)obj->Buffer.Pointer;
	break;
    case ACPI_TYPE_INTEGER:
	FUNC0((AE_INFO,
	    "Possibly buggy BIOS with ACPI_TYPE_INTEGER for function enumeration\n"));
	ret = obj->Integer.Value & 0xFF;
	break;
    default:
	FUNC3((AE_INFO, "Unexpected return type %u\n", obj->Type));
    };

    FUNC4(obj);
    return ret;
}