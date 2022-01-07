
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ HI32 (int ) ;
 scalar_t__ LO32 (int ) ;
 int cvmx_safe_printf (char*,char const*,unsigned int,unsigned int) ;

__attribute__((used)) static inline void print_reg64(const char *name, uint64_t reg)
{
    cvmx_safe_printf("%16s: 0x%08x%08x\n", name, (unsigned int)HI32(reg),(unsigned int)LO32(reg));
}
