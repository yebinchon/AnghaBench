
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;


 void* legacy_fetch_link_map_offsets ;

__attribute__((used)) static void *
init_fetch_link_map_offsets (struct gdbarch *gdbarch)
{
  return legacy_fetch_link_map_offsets;
}
