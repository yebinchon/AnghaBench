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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(const uint32_t *subkey, uint32_t *io)
{
    uint32_t il,ir,t0,t1;               /* temporary valiables */
    
    /* pre whitening but absorb kw2*/
    io[0] ^= FUNC2(24);
    io[1] ^= FUNC3(24);

    /* main iteration */
    FUNC1(io[0],io[1], FUNC2(23),FUNC3(23),
		     io[2],io[3],il,ir,t0,t1);
    FUNC1(io[2],io[3], FUNC2(22),FUNC3(22),
		     io[0],io[1],il,ir,t0,t1);
    FUNC1(io[0],io[1], FUNC2(21),FUNC3(21),
		     io[2],io[3],il,ir,t0,t1);
    FUNC1(io[2],io[3], FUNC2(20),FUNC3(20),
		     io[0],io[1],il,ir,t0,t1);
    FUNC1(io[0],io[1], FUNC2(19),FUNC3(19),
		     io[2],io[3],il,ir,t0,t1);
    FUNC1(io[2],io[3], FUNC2(18),FUNC3(18),
		     io[0],io[1],il,ir,t0,t1);

    FUNC0(io[0],io[1],io[2],io[3],FUNC2(17),FUNC3(17),FUNC2(16),FUNC3(16),
		 t0,t1,il,ir);

    FUNC1(io[0],io[1], FUNC2(15),FUNC3(15),
		     io[2],io[3],il,ir,t0,t1);
    FUNC1(io[2],io[3], FUNC2(14),FUNC3(14),
		     io[0],io[1],il,ir,t0,t1);
    FUNC1(io[0],io[1], FUNC2(13),FUNC3(13),
		     io[2],io[3],il,ir,t0,t1);
    FUNC1(io[2],io[3], FUNC2(12),FUNC3(12),
		     io[0],io[1],il,ir,t0,t1);
    FUNC1(io[0],io[1], FUNC2(11),FUNC3(11),
		     io[2],io[3],il,ir,t0,t1);
    FUNC1(io[2],io[3], FUNC2(10),FUNC3(10),
		     io[0],io[1],il,ir,t0,t1);

    FUNC0(io[0],io[1],io[2],io[3], FUNC2(9),FUNC3(9), FUNC2(8),FUNC3(8),
		 t0,t1,il,ir);

    FUNC1(io[0],io[1], FUNC2(7),FUNC3(7),
		     io[2],io[3],il,ir,t0,t1);
    FUNC1(io[2],io[3], FUNC2(6),FUNC3(6),
		     io[0],io[1],il,ir,t0,t1);
    FUNC1(io[0],io[1], FUNC2(5),FUNC3(5),
		     io[2],io[3],il,ir,t0,t1);
    FUNC1(io[2],io[3], FUNC2(4),FUNC3(4),
		     io[0],io[1],il,ir,t0,t1);
    FUNC1(io[0],io[1], FUNC2(3),FUNC3(3),
		     io[2],io[3],il,ir,t0,t1);
    FUNC1(io[2],io[3], FUNC2(2),FUNC3(2),
		     io[0],io[1],il,ir,t0,t1);

    /* post whitening but kw4 */
    io[2] ^= FUNC2(0);
    io[3] ^= FUNC3(0);

    t0 = io[0];
    t1 = io[1];
    io[0] = io[2];
    io[1] = io[3];
    io[2] = t0;
    io[3] = t1;
}