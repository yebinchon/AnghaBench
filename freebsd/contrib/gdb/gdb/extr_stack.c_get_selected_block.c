
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int CORE_ADDR ;


 struct block* block_for_pc (int ) ;
 int deprecated_selected_frame ;
 struct block* get_frame_block (int ,int *) ;
 int read_pc () ;
 int target_has_stack ;

struct block *
get_selected_block (CORE_ADDR *addr_in_block)
{
  if (!target_has_stack)
    return 0;
  if (!deprecated_selected_frame)
    {
      CORE_ADDR pc = read_pc ();
      if (addr_in_block != ((void*)0))
 *addr_in_block = pc;
      return block_for_pc (pc);
    }
  return get_frame_block (deprecated_selected_frame, addr_in_block);
}
