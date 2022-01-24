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
struct acpi_ec_params {int gpe_bit; scalar_t__ glk; int /*<<< orphan*/ * gpe_handle; scalar_t__ uid; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  desc ;
struct TYPE_11__ {int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Length; } ;
struct TYPE_9__ {int /*<<< orphan*/ * Elements; } ;
struct TYPE_8__ {int Value; } ;
struct TYPE_10__ {int Type; TYPE_2__ Package; TYPE_1__ Integer; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_4__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 scalar_t__ ACPI_TYPE_DEVICE ; 
#define  ACPI_TYPE_INTEGER 129 
#define  ACPI_TYPE_PACKAGE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  acpi_ec_devclass ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct acpi_ec_params* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct acpi_ec_params*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct acpi_ec_params*,int /*<<< orphan*/ ) ; 
 struct acpi_ec_params* FUNC22 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC24(device_t dev)
{
    ACPI_BUFFER buf;
    ACPI_HANDLE h;
    ACPI_OBJECT *obj;
    ACPI_STATUS status;
    device_t	peer;
    char	desc[64];
    int		ecdt;
    int		ret;
    struct acpi_ec_params *params;
    static char *ec_ids[] = { "PNP0C09", NULL };

    ret = ENXIO;

    /* Check that this is a device and that EC is not disabled. */
    if (FUNC12(dev) != ACPI_TYPE_DEVICE || FUNC9("ec"))
	return (ret);

    if (FUNC18(dev)) {
	/*
	 * If probed via ECDT, set description and continue. Otherwise, we can
	 * access the namespace and make sure this is not a duplicate probe.
	 */
        ecdt = 1;
        params = FUNC11(dev);
	if (params != NULL)
	    ret = 0;

	goto out;
    } else
	ecdt = 0;

    ret = FUNC1(FUNC16(dev), dev, ec_ids, NULL);
    if (ret > 0)
	return (ret);

    params = FUNC22(sizeof(struct acpi_ec_params), M_TEMP, M_WAITOK | M_ZERO);

    buf.Pointer = NULL;
    buf.Length = ACPI_ALLOCATE_BUFFER;
    h = FUNC10(dev);

    /*
     * Read the unit ID to check for duplicate attach and the global lock value
     * to see if we should acquire it when accessing the EC.
     */
    status = FUNC6(h, "_UID", &params->uid);
    if (FUNC0(status))
	params->uid = 0;

    /*
     * Check for a duplicate probe. This can happen when a probe via ECDT
     * succeeded already. If this is a duplicate, disable this device.
     *
     * NB: It would seem device_disable would be sufficient to not get
     * duplicated devices, and ENXIO isn't needed, however, device_probe() only
     * checks DF_ENABLED at the start and so disabling it here is too late to
     * prevent device_attach() from being called.
     */
    peer = FUNC14(acpi_ec_devclass, params->uid);
    if (peer != NULL && FUNC17(peer)) {
	FUNC15(dev);
	ret = ENXIO;
	goto out;
    }

    status = FUNC6(h, "_GLK", &params->glk);
    if (FUNC0(status))
	params->glk = 0;

    /*
     * Evaluate the _GPE method to find the GPE bit used by the EC to signal
     * status (SCI).  If it's a package, it contains a reference and GPE bit,
     * similar to _PRW.
     */
    status = FUNC3(h, "_GPE", NULL, &buf);
    if (FUNC0(status)) {
	FUNC19(dev, "can't evaluate _GPE - %s\n", FUNC4(status));
	goto out;
    }

    obj = (ACPI_OBJECT *)buf.Pointer;
    if (obj == NULL)
	goto out;

    switch (obj->Type) {
    case ACPI_TYPE_INTEGER:
	params->gpe_handle = NULL;
	params->gpe_bit = obj->Integer.Value;
	break;
    case ACPI_TYPE_PACKAGE:
	if (!FUNC2(obj, 2))
	    goto out;
	params->gpe_handle = FUNC7(NULL, &obj->Package.Elements[0]);
	if (params->gpe_handle == NULL ||
	    FUNC8(obj, 1, &params->gpe_bit) != 0)
		goto out;
	break;
    default:
	FUNC19(dev, "_GPE has invalid type %d\n", obj->Type);
	goto out;
    }

    /* Store the values we got from the namespace for attach. */
    FUNC13(dev, params);

    if (buf.Pointer)
	FUNC5(buf.Pointer);
out:
    if (ret <= 0) {
	FUNC23(desc, sizeof(desc), "Embedded Controller: GPE %#x%s%s",
		 params->gpe_bit, (params->glk) ? ", GLK" : "",
		 ecdt ? ", ECDT" : "");
	FUNC20(dev, desc);
    } else
	FUNC21(params, M_TEMP);

    return (ret);
}