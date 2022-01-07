
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct pt_section {int (* read ) (struct pt_section const*,int *,int ,int ) ;} ;


 int pte_internal ;
 int pte_nomap ;
 int stub1 (struct pt_section const*,int *,int ,int ) ;

int pt_section_read(const struct pt_section *section, uint8_t *buffer,
      uint16_t size, uint64_t offset)
{
 if (!section)
  return -pte_internal;

 if (!section->read)
  return -pte_nomap;

 return section->read(section, buffer, size, offset);
}
