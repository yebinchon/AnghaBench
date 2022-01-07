
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_gen_win_info {int dummy; } ;


 int tui_init_generic_part (struct tui_gen_win_info*) ;
 scalar_t__ xmalloc (int) ;

struct tui_gen_win_info *
tui_alloc_generic_win_info (void)
{
  struct tui_gen_win_info * win;

  if ((win = (struct tui_gen_win_info *) xmalloc (
       sizeof (struct tui_gen_win_info *))) != (struct tui_gen_win_info *) ((void*)0))
    tui_init_generic_part (win);

  return win;
}
