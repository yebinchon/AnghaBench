
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct __cvmx_interrupt_handler {int data; int (* handler ) (int,int*,int ) ;} ;
struct TYPE_2__ {struct __cvmx_interrupt_handler* handlers; int (* exception_handler ) (int*) ;} ;


 int CVMX_MF_CACHE_ERR (int) ;
 int CVMX_MT_CACHE_ERR (int ) ;
 int CVMX_MT_DCACHE_ERR (int) ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN5XXX ;
 int OCTEON_CN6XXX ;
 int OCTEON_CNF7XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_interrupt_default_exception_handler (int*) ;
 int cvmx_get_core_num () ;
 TYPE_1__ cvmx_interrupt_state ;
 int cvmx_safe_printf (char*,int,...) ;
 int stub1 (int*) ;
 int stub2 (int,int*,int ) ;

void cvmx_interrupt_do_irq(uint64_t *registers)
{
    uint64_t mask;
    uint64_t cause;
    uint64_t status;
    uint64_t cache_err;
    int i;
    uint32_t exc_vec;

    asm volatile ("dmfc0 %0,$13,0" : "=r" (cause));
    asm volatile ("dmfc0 %0,$12,0" : "=r" (status));


    if ((cause & 0x7c) == 0)
    {
        asm volatile ("dmtc0 %0, $12, 0" : : "r" (status & ~(0xff02)));
    }



    exc_vec = (uint32_t)(registers[27] & 0x780);




    i = cvmx_get_core_num();
    if (exc_vec == 0x100 && (status & 0x4))
    {
        CVMX_MF_CACHE_ERR(cache_err);


        if (OCTEON_IS_MODEL(OCTEON_CN3XXX) || OCTEON_IS_MODEL(OCTEON_CN5XXX))
        {
            if (registers[34] & 0x1)
                cvmx_safe_printf("Dcache error detected: core: %d, way: %d, va 7:3: 0x%x\n", i, (int)(registers[34] >> 8) & 0x3f, (int)(registers[34] >> 3) & 0x1f);
            else if (cache_err & 0x1)
                cvmx_safe_printf("Icache error detected: core: %d, set: %d, way : %d, va 6:3 = 0x%x\n", i, (int)(cache_err >> 5) & 0x3f, (int)(cache_err >> 3) & 0x3, (int)(cache_err >> 11) & 0xf);
            else
                cvmx_safe_printf("Cache error exception: core %d\n", i);
        }
        else
        {
            if (registers[34] & 0x1)
                cvmx_safe_printf("Dcache error detected: core: %d, way: %d, va 9:7: 0x%x\n", i, (int)(registers[34] >> 10) & 0x1f, (int)(registers[34] >> 7) & 0x3);
            else if (cache_err & 0x1)
                cvmx_safe_printf("Icache error detected: core: %d, way : %d, va 9:3 = 0x%x\n", i, (int)(cache_err >> 10) & 0x3f, (int)(cache_err >> 3) & 0x7f);
            else
                cvmx_safe_printf("Cache error exception: core %d\n", i);
        }
        CVMX_MT_DCACHE_ERR(1);
        CVMX_MT_CACHE_ERR(0);
    }



    if (OCTEON_IS_MODEL(OCTEON_CN6XXX) || OCTEON_IS_MODEL(OCTEON_CNF7XXX))
    {
        i = cvmx_get_core_num();
        if (registers[34] & 0x4)
        {
            cvmx_safe_printf("Bus error detected due to DID timeout: core: %d\n", i);
            CVMX_MT_DCACHE_ERR(4);
        }
        else if (registers[34] & 0x2)
        {
            cvmx_safe_printf("Bus error detected due to write buffer parity: core: %d\n", i);
            CVMX_MT_DCACHE_ERR(2);
        }
    }

    if ((cause & 0x7c) != 0)
    {
        cvmx_interrupt_state.exception_handler(registers);
        goto return_from_interrupt;
    }


    mask = ((cause & status) >> 8) & 0xff;
    if (mask == 0)
    {
        goto return_from_interrupt;
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


    __cvmx_interrupt_default_exception_handler(registers);

return_from_interrupt:

    asm volatile ("dmtc0 %0, $12, 0" : : "r" (status));
}
