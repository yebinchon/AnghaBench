
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asection ;
typedef int CORE_ADDR ;


 scalar_t__ overlay_debugging ;
 int overlay_unmapped_address (int ,int *) ;
 scalar_t__ section_is_mapped (int *) ;
 int section_is_overlay (int *) ;

CORE_ADDR
symbol_overlayed_address (CORE_ADDR address, asection *section)
{
  if (overlay_debugging)
    {

      if (section == 0)
 return address;

      if (!section_is_overlay (section))
 return address;

      if (section_is_mapped (section))
 return address;




      return overlay_unmapped_address (address, section);
    }
  return address;
}
