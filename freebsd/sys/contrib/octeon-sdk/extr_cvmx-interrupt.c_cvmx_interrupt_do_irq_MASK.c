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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct __cvmx_interrupt_handler {int /*<<< orphan*/  data; int /*<<< orphan*/  (* handler ) (int,int*,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {struct __cvmx_interrupt_handler* handlers; int /*<<< orphan*/  (* exception_handler ) (int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN5XXX ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 int /*<<< orphan*/  OCTEON_CNF7XXX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 () ; 
 TYPE_1__ cvmx_interrupt_state ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int,int*,int /*<<< orphan*/ ) ; 

void FUNC9(uint64_t *registers)
{
    uint64_t        mask;
    uint64_t        cause;
    uint64_t        status;
    uint64_t        cache_err;
    int             i;
    uint32_t exc_vec;
    /* Determine the cause of the interrupt */
    asm volatile ("dmfc0 %0,$13,0" : "=r" (cause));
    asm volatile ("dmfc0 %0,$12,0" : "=r" (status));
    /* In case of exception, clear all interrupts to avoid recursive interrupts.
       Also clear EXL bit to display the correct PC value. */
    if ((cause & 0x7c) == 0)
    {
        asm volatile ("dmtc0 %0, $12, 0" : : "r" (status & ~(0xff02)));
    }
    /* The assembly stub at each exception vector saves its address in k1 when
    ** it calls the stage 2 handler.  We use this to compute the exception vector
    ** that brought us here */
    exc_vec = (uint32_t)(registers[27] & 0x780);  /* Mask off bits we need to ignore */

    /* Check for cache errors.  The cache errors go to a separate exception vector,
    ** so we will only check these if we got here from a cache error exception, and
    ** the ERL (error level) bit is set. */
    i = FUNC5();
    if (exc_vec == 0x100 && (status & 0x4))
    {
        FUNC0(cache_err);

        /* Use copy of DCACHE_ERR register that early exception stub read */
        if (FUNC3(OCTEON_CN3XXX) || FUNC3(OCTEON_CN5XXX))
        {
            if (registers[34] & 0x1)
                FUNC6("Dcache error detected: core: %d, way: %d, va 7:3: 0x%x\n", i, (int)(registers[34] >> 8) & 0x3f, (int)(registers[34] >> 3) & 0x1f);
            else if (cache_err & 0x1)
                FUNC6("Icache error detected: core: %d, set: %d, way : %d, va 6:3 = 0x%x\n", i, (int)(cache_err >> 5) & 0x3f, (int)(cache_err >> 3) & 0x3, (int)(cache_err >> 11) & 0xf);
            else
                FUNC6("Cache error exception: core %d\n", i);
        }
        else
        {
            if (registers[34] & 0x1)
                FUNC6("Dcache error detected: core: %d, way: %d, va 9:7: 0x%x\n", i, (int)(registers[34] >> 10) & 0x1f, (int)(registers[34] >> 7) & 0x3);
            else if (cache_err & 0x1)
                FUNC6("Icache error detected: core: %d, way : %d, va 9:3 = 0x%x\n", i, (int)(cache_err >> 10) & 0x3f, (int)(cache_err >> 3) & 0x7f);
            else
                FUNC6("Cache error exception: core %d\n", i);
        }
        FUNC2(1);
        FUNC1(0);
    }

    /* The bus error exceptions can occur due to DID timeout or write buffer,
       check by reading COP0_CACHEERRD */
    if (FUNC3(OCTEON_CN6XXX) || FUNC3(OCTEON_CNF7XXX))
    {
        i = FUNC5();
        if (registers[34] & 0x4)
        {
            FUNC6("Bus error detected due to DID timeout: core: %d\n", i);
            FUNC2(4);
        }
        else if (registers[34] & 0x2)
        {
            FUNC6("Bus error detected due to write buffer parity: core: %d\n", i);
            FUNC2(2);
        }
    }

    if ((cause & 0x7c) != 0)
    {
        cvmx_interrupt_state.exception_handler(registers);
        goto return_from_interrupt;
    }

    /* Convert the cause into an active mask */
    mask = ((cause & status) >> 8) & 0xff;
    if (mask == 0)
    {
        goto return_from_interrupt; /* Spurious interrupt */
    }

    for (i=0; i<8; i++)
    {
        if (mask & (1<<i))
        {
            struct __cvmx_interrupt_handler *h = cvmx_interrupt_state.handlers + i;
            h->handler(i, registers, h->data);
            goto return_from_interrupt;
        }
    }

    /* We should never get here */
    FUNC4(registers);

return_from_interrupt:
    /* Restore Status register before returning from exception. */
    asm volatile ("dmtc0 %0, $12, 0" : : "r" (status));
}