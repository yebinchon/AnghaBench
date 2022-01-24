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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct twl_vreg_softc {int /*<<< orphan*/  sc_vreg_list; int /*<<< orphan*/  sc_dev; } ;
struct twl_regulator_entry {char* name; int /*<<< orphan*/  oid; int /*<<< orphan*/  num_supp_voltages; int /*<<< orphan*/  const* supp_voltages; int /*<<< orphan*/  fixed_voltage; void* reg_off; void* sub_dev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct twl_regulator_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,struct twl_vreg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int TWL_VREG_MAX_NAMELEN ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 struct twl_regulator_entry* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  twl_vreg_sysctl_voltage ; 

__attribute__((used)) static struct twl_regulator_entry*
FUNC7(struct twl_vreg_softc *sc, const char *name,
	uint8_t nsub, uint8_t regbase, uint16_t fixed_voltage,
	const uint16_t *voltages, uint32_t num_voltages)
{
	struct sysctl_ctx_list *ctx = FUNC3(sc->sc_dev);
	struct sysctl_oid *tree = FUNC4(sc->sc_dev);
	struct twl_regulator_entry *new;

	new = FUNC5(sizeof(struct twl_regulator_entry), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (new == NULL)
		return (NULL);


	FUNC6(new->name, name, TWL_VREG_MAX_NAMELEN);
	new->name[TWL_VREG_MAX_NAMELEN - 1] = '\0';

	new->sub_dev = nsub;
	new->reg_off = regbase;

	new->fixed_voltage = fixed_voltage;

	new->supp_voltages = voltages;
	new->num_supp_voltages = num_voltages;


	/* Add a sysctl entry for the voltage */
	new->oid = FUNC1(ctx, FUNC2(tree), OID_AUTO, name,
	    CTLTYPE_INT | CTLFLAG_RD, sc, 0,
	    twl_vreg_sysctl_voltage, "I", "voltage regulator");

	/* Finally add the regulator to list of supported regulators */
	FUNC0(&sc->sc_vreg_list, new, entries);

	return (new);
}