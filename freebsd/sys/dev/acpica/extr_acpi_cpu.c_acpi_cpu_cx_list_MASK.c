#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sbuf {int dummy; } ;
struct acpi_cpu_softc {int cpu_cx_count; TYPE_1__* cpu_cx_states; int /*<<< orphan*/  cpu_cx_supported; } ;
struct TYPE_2__ {int /*<<< orphan*/  trans_lat; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 

__attribute__((used)) static void
FUNC4(struct acpi_cpu_softc *sc)
{
    struct sbuf sb;
    int i;

    /*
     * Set up the list of Cx states
     */
    FUNC1(&sb, sc->cpu_cx_supported, sizeof(sc->cpu_cx_supported),
	SBUF_FIXEDLEN);
    for (i = 0; i < sc->cpu_cx_count; i++)
	FUNC2(&sb, "C%d/%d/%d ", i + 1, sc->cpu_cx_states[i].type,
	    sc->cpu_cx_states[i].trans_lat);
    FUNC3(&sb);
    FUNC0(&sb);
}