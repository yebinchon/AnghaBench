
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obj_section {int ovly_mapped; int the_bfd_section; } ;


 int overlay_cache_invalid ;
 int overlay_debugging ;
 int overlay_invalidate_all () ;



 int section_is_overlay (int ) ;
 int stub1 (struct obj_section*) ;
 int target_overlay_update (struct obj_section*) ;

__attribute__((used)) static int
overlay_is_mapped (struct obj_section *osect)
{
  if (osect == 0 || !section_is_overlay (osect->the_bfd_section))
    return 0;

  switch (overlay_debugging)
    {
    default:
    case 129:
      return 0;
    case 130:


      if (target_overlay_update)
 {
   if (overlay_cache_invalid)
     {
       overlay_invalidate_all ();
       overlay_cache_invalid = 0;
     }
   if (osect->ovly_mapped == -1)
     (*target_overlay_update) (osect);
 }

    case 128:
      return osect->ovly_mapped == 1;
    }
}
