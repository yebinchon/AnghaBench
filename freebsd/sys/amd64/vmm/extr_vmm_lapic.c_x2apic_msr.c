
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static bool
x2apic_msr(u_int msr)
{
 return (msr >= 0x800 && msr <= 0xBFF);
}
