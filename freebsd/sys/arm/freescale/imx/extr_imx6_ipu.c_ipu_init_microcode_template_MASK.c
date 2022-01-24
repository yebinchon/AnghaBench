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
typedef  int uint32_t ;
struct ipu_softc {int dummy; } ;

/* Variables and functions */
 int DC_TEMPL_BASE ; 
 int GLUELOGIC_KEEP_ASSERTED ; 
 int GLUELOGIC_KEEP_NEGATED ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_softc*,int,int) ; 
 int /*<<< orphan*/  OPCODE_WROD ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int TEMPLATE_STOP ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct ipu_softc *sc, int di, int map)
{
	uint32_t addr;
	uint32_t w1, w2;
	int i, word;
	int glue;

	word = di ? 2 : 5;

	for (i = 0; i < 3; i++) {
		if (i == 0)
			glue = GLUELOGIC_KEEP_ASSERTED;
		else if (i == 1)
			glue = GLUELOGIC_KEEP_NEGATED;
		else if (i == 2)
			glue = 0;

		w1 = FUNC4(5) |
		    FUNC1(glue) |
		    FUNC5(1) | /* wave unit 0 */
		    FUNC2(map + 1);
		/* operand is zero */

		/* Write data to DI and Hold data in register */
		w2 = FUNC3(OPCODE_WROD) |
		    TEMPLATE_STOP;

		addr = DC_TEMPL_BASE + (word + i) * 2 * sizeof(uint32_t);
		FUNC0(sc, addr, w1);
		FUNC0(sc, addr + sizeof(uint32_t), w2);
	}
}