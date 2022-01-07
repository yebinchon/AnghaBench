
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int bus_space_map (int ,int,int,int ,int *) ;
 int bus_space_unmap (int ,int ,int) ;
 int bus_space_write_4 (int ,int ,int,int) ;
 int fdtbus_bs_tag ;

void
cpu_reset(void)
{
 bus_space_tag_t bst;
 bus_space_handle_t bsh;

 bst = fdtbus_bs_tag;



 bus_space_map(bst, 0x1e8c0000, 0x20000, 0, &bsh);
 bus_space_write_4(bst, bsh, 0, 13000);
 bus_space_write_4(bst, bsh, 8, (1<<3) | (1<<4) | 7);
 bus_space_unmap(bst, bsh, 0x20000);

 for (;;)
  continue;
}
