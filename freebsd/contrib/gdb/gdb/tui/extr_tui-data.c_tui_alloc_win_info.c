
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct tui_win_info {TYPE_1__ generic; } ;
typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;


 int init_win_info (struct tui_win_info*) ;
 scalar_t__ xmalloc (int) ;

struct tui_win_info *
tui_alloc_win_info (enum tui_win_type type)
{
  struct tui_win_info * win_info = (struct tui_win_info *) ((void*)0);

  win_info = (struct tui_win_info *) xmalloc (sizeof (struct tui_win_info));
  if ((win_info != ((void*)0)))
    {
      win_info->generic.type = type;
      init_win_info (win_info);
    }

  return win_info;
}
