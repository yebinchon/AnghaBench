
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;


 int fetch_link_map_offsets_gdbarch_data ;
 int set_gdbarch_data (struct gdbarch*,int ,struct link_map_offsets* (*) ()) ;

void
set_solib_svr4_fetch_link_map_offsets (struct gdbarch *gdbarch,
                                       struct link_map_offsets *(*flmo) (void))
{
  set_gdbarch_data (gdbarch, fetch_link_map_offsets_gdbarch_data, flmo);
}
