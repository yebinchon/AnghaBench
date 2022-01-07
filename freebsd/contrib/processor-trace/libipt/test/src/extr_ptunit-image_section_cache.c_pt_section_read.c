
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint64_t ;
typedef size_t uint16_t ;
struct pt_section {int * content; } ;


 int memcpy (int *,int *,size_t) ;
 int pte_internal ;
 int pte_invalid ;
 int pte_nomap ;

int pt_section_read(const struct pt_section *section, uint8_t *buffer,
      uint16_t size, uint64_t offset)
{
 uint64_t begin, end, max;

 if (!section || !buffer)
  return -pte_internal;

 begin = offset;
 end = begin + size;
 max = sizeof(section->content);

 if (max <= begin)
  return -pte_nomap;

 if (max < end)
  end = max;

 if (end <= begin)
  return -pte_invalid;

 memcpy(buffer, &section->content[begin], (size_t) (end - begin));
 return (int) (end - begin);
}
