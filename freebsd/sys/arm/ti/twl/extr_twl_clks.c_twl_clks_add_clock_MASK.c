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
struct twl_clks_softc {int /*<<< orphan*/  sc_clks_list; int /*<<< orphan*/  sc_dev; } ;
struct twl_clk_entry {char* name; int /*<<< orphan*/  oid; void* reg_off; void* sub_dev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct twl_clk_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,struct twl_clks_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (struct twl_clks_softc*) ; 
 int TWL_CLKS_MAX_NAMELEN ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct twl_clk_entry* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  twl_clks_sysctl_clock ; 

__attribute__((used)) static struct twl_clk_entry*
FUNC8(struct twl_clks_softc *sc, const char *name,
	uint8_t nsub, uint8_t regbase)
{
	struct sysctl_ctx_list *ctx = FUNC4(sc->sc_dev);
	struct sysctl_oid *tree = FUNC5(sc->sc_dev);
	struct twl_clk_entry *new;

	FUNC3(sc);

	new = FUNC6(sizeof(struct twl_clk_entry), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (new == NULL)
		return (NULL);


	FUNC7(new->name, name, TWL_CLKS_MAX_NAMELEN);
	new->name[TWL_CLKS_MAX_NAMELEN - 1] = '\0';

	new->sub_dev = nsub;
	new->reg_off = regbase;



	/* Add a sysctl entry for the clock */
	new->oid = FUNC1(ctx, FUNC2(tree), OID_AUTO, name,
	    CTLTYPE_INT | CTLFLAG_RD, sc, 0,
	    twl_clks_sysctl_clock, "I", "external clock");

	/* Finally add the regulator to list of supported regulators */
	FUNC0(&sc->sc_clks_list, new, link);

	return (new);
}