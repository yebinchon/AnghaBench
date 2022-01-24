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
typedef  int /*<<< orphan*/  u_int ;
struct acpi_cpu_device {int /*<<< orphan*/  ad_rl; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct acpi_cpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_cpu_device*,int /*<<< orphan*/ ) ; 
 struct acpi_cpu_device* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC5(device_t dev, u_int order, const char *name, int unit)
{
    struct acpi_cpu_device *ad;
    device_t child;

    if ((ad = FUNC3(sizeof(*ad), M_TEMP, M_NOWAIT | M_ZERO)) == NULL)
	return (NULL);

    FUNC4(&ad->ad_rl);
    
    child = FUNC0(dev, order, name, unit);
    if (child != NULL)
	FUNC1(child, ad);
    else
	FUNC2(ad, M_TEMP);
    return (child);
}