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
struct tnc_if_imc {size_t imcID; int /*<<< orphan*/  imc_send; int /*<<< orphan*/  supported_types; int /*<<< orphan*/  path; int /*<<< orphan*/  name; scalar_t__ dlhandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** tnc_imc ; 
 int /*<<< orphan*/  FUNC3 (struct tnc_if_imc*) ; 

__attribute__((used)) static void FUNC4(struct tnc_if_imc *imc)
{
	FUNC3(imc);
	tnc_imc[imc->imcID] = NULL;

	if (imc->dlhandle) {
#ifdef CONFIG_NATIVE_WINDOWS
		FreeLibrary(imc->dlhandle);
#else /* CONFIG_NATIVE_WINDOWS */
		FUNC1(imc->dlhandle);
#endif /* CONFIG_NATIVE_WINDOWS */
	}
	FUNC2(imc->name);
	FUNC2(imc->path);
	FUNC2(imc->supported_types);
	FUNC2(imc->imc_send);
}