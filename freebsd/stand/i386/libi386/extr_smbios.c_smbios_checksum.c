
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int caddr_t ;


 int SMBIOS_GET8 (int const,int) ;

__attribute__((used)) static uint8_t
smbios_checksum(const caddr_t addr, const uint8_t len)
{
 uint8_t sum;
 int i;

 for (sum = 0, i = 0; i < len; i++)
  sum += SMBIOS_GET8(addr, i);
 return (sum);
}
