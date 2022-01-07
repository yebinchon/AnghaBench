
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint16_t ;
struct pt_section {int (* read ) (struct pt_section const*,int *,scalar_t__,scalar_t__) ;scalar_t__ size; } ;


 int pte_internal ;
 int pte_nomap ;
 int stub1 (struct pt_section const*,int *,scalar_t__,scalar_t__) ;

int pt_section_read(const struct pt_section *section, uint8_t *buffer,
      uint16_t size, uint64_t offset)
{
 uint64_t limit, space;

 if (!section)
  return -pte_internal;

 if (!section->read)
  return -pte_nomap;

 limit = section->size;
 if (limit <= offset)
  return -pte_nomap;


 space = limit - offset;
 if (space < size)
  size = (uint16_t) space;

 return section->read(section, buffer, size, offset);
}
