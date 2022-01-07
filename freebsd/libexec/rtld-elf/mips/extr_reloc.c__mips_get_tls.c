
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ TLS_TCB_SIZE ;
 scalar_t__ TLS_TP_OFFSET ;

void *
_mips_get_tls(void)
{
 uint32_t _rv;

 __asm__ __volatile__ (
     ".set\tpush\n\t"
     ".set\tmips32r2\n\t"
     "rdhwr\t%0, $29\n\t"
     ".set\tpop"
     : "=r" (_rv));







 _rv = _rv - TLS_TP_OFFSET - TLS_TCB_SIZE;

 return (void *)_rv;
}
