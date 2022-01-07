
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint16_t ;
struct pt_section {struct pt_sec_windows_mapping* mapping; } ;
struct pt_sec_windows_mapping {int * begin; } ;


 int memcpy (int *,int const*,scalar_t__) ;
 int pte_internal ;

int pt_sec_windows_read(const struct pt_section *section, uint8_t *buffer,
        uint16_t size, uint64_t offset)
{
 struct pt_sec_windows_mapping *mapping;
 const uint8_t *begin;

 if (!buffer || !section)
  return -pte_internal;

 mapping = section->mapping;
 if (!mapping)
  return -pte_internal;







 begin = mapping->begin + offset;

 memcpy(buffer, begin, size);
 return (int) size;
}
