
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static uint8_t hdmi_infoframe_checksum(uint8_t *ptr, size_t size)
{
 uint8_t csum = 0;
 size_t i;


 for (i = 0; i < size; i++)
  csum += ptr[i];

 return 256 - csum;
}
