#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_8__ {int Value; } ;
struct TYPE_12__ {scalar_t__ Type; TYPE_1__ Integer; } ;
struct TYPE_11__ {TYPE_3__* Pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {int Count; TYPE_5__* Elements; } ;
struct TYPE_10__ {scalar_t__ Type; TYPE_2__ Package; } ;
typedef  TYPE_3__ ACPI_OBJECT ;
typedef  TYPE_4__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_HP_CMI_DETAIL_ENUMS ; 
 int ACPI_HP_CMI_DETAIL_FLAGS ; 
 int ACPI_HP_CMI_DETAIL_PATHS ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 scalar_t__ ACPI_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 char* FUNC3 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(device_t wmi_dev, const char* guid, UINT8 instance,
    char* outbuf, size_t outsize, UINT32* sequence, int detail)
{
	ACPI_OBJECT	*obj;
	ACPI_BUFFER	out = { ACPI_ALLOCATE_BUFFER, NULL };
	int		i;
	int		outlen;
	int		size = 255;
	int		has_enums = 0;
	int		valuebase = 0;
	char		string_buffer[size];
	int		enumbase;

	outlen = 0;
	outbuf[0] = 0;	
	if (FUNC0(FUNC1(wmi_dev, guid, instance, &out))) {
		FUNC2(&out);
		return (-EINVAL);
	}
	obj = out.Pointer;
	if (!obj || obj->Type != ACPI_TYPE_PACKAGE) {
		FUNC2(&out);
		return (-EINVAL);
	}

	/* Check if first 6 bytes matches our expectations. */
	if (obj->Package.Count < 8 ||
	    obj->Package.Elements[0].Type != ACPI_TYPE_STRING ||
	    obj->Package.Elements[1].Type != ACPI_TYPE_STRING ||
	    obj->Package.Elements[2].Type != ACPI_TYPE_STRING ||
	    obj->Package.Elements[3].Type != ACPI_TYPE_INTEGER ||
	    obj->Package.Elements[4].Type != ACPI_TYPE_INTEGER ||
	    obj->Package.Elements[5].Type != ACPI_TYPE_INTEGER ||
	    obj->Package.Elements[6].Type != ACPI_TYPE_INTEGER ||
	    obj->Package.Elements[7].Type != ACPI_TYPE_INTEGER) {
		FUNC2(&out);
		return (-EINVAL);
	}

	/* Skip prerequisites and optionally array. */
	valuebase = 8 + obj->Package.Elements[7].Integer.Value;
	if (obj->Package.Count <= valuebase) {
		FUNC2(&out);
		return (-EINVAL);
	}
	if (obj->Package.Elements[valuebase].Type == ACPI_TYPE_INTEGER)
		valuebase += 1 + obj->Package.Elements[valuebase].Integer.Value;

	/* Check if we have value and enum. */
	if (obj->Package.Count <= valuebase + 1 ||
	    obj->Package.Elements[valuebase].Type != ACPI_TYPE_STRING ||
	    obj->Package.Elements[valuebase+1].Type != ACPI_TYPE_INTEGER) {
		FUNC2(&out);
		return (-EINVAL);
	}
	enumbase = valuebase + 1;
	if (obj->Package.Count <= valuebase + 
	        obj->Package.Elements[enumbase].Integer.Value) {
		FUNC2(&out);
		return (-EINVAL);
	}

	if (detail & ACPI_HP_CMI_DETAIL_PATHS) {
		FUNC4(outbuf, FUNC3(
		    &obj->Package.Elements[2], string_buffer, size), outsize);
		outlen += 48;
		while (FUNC5(outbuf) < outlen)
			FUNC4(outbuf, " ", outsize);
	}
	FUNC4(outbuf, FUNC3(
	    &obj->Package.Elements[0], string_buffer, size), outsize);
	outlen += 43;
	while (FUNC5(outbuf) < outlen)
		FUNC4(outbuf, " ", outsize);
	FUNC4(outbuf, FUNC3(
	    &obj->Package.Elements[valuebase], string_buffer, size), outsize);
	outlen += 21;
	while (FUNC5(outbuf) < outlen)
		FUNC4(outbuf, " ", outsize);
	for (i = 0; i < FUNC5(outbuf); ++i)
		if (outbuf[i] == '\\')
			outbuf[i] = '/';
	if (detail & ACPI_HP_CMI_DETAIL_ENUMS) {
		for (i = enumbase + 1; i < enumbase + 1 +
		    obj->Package.Elements[enumbase].Integer.Value; ++i) {
			FUNC3(
			    &obj->Package.Elements[i], string_buffer, size);
			if (FUNC5(string_buffer) > 1 ||
			    (FUNC5(string_buffer) == 1 &&
			    string_buffer[0] != ' ')) {
				if (has_enums)
					FUNC4(outbuf, "/", outsize);
				else
					FUNC4(outbuf, " (", outsize);
				FUNC4(outbuf, string_buffer, outsize);
				has_enums = 1;
			}
		}
	}
	if (has_enums)
		FUNC4(outbuf, ")", outsize);
	if (detail & ACPI_HP_CMI_DETAIL_FLAGS) {
		FUNC4(outbuf, obj->Package.Elements[3].Integer.Value ?
		    " [ReadOnly]" : "", outsize);
		FUNC4(outbuf, obj->Package.Elements[4].Integer.Value ?
		    "" : " [NOUI]", outsize);
		FUNC4(outbuf, obj->Package.Elements[5].Integer.Value ?
		    " [RPP]" : "", outsize);
	}
	*sequence = (UINT32) obj->Package.Elements[6].Integer.Value;
	FUNC2(&out);

	return (0);
}