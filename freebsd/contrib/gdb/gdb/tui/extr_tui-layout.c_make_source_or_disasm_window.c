
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct tui_gen_win_info* execution_info; } ;
struct TYPE_4__ {TYPE_1__ source_info; } ;
struct tui_win_info {TYPE_2__ detail; } ;
struct tui_gen_win_info {int width; } ;
typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;


 int BOX_WINDOW ;
 int DONT_BOX_WINDOW ;
 int EXEC_INFO_WIN ;
 int SRC_WIN ;
 int init_and_make_win (void**,int,int,int,int,int,int ) ;
 struct tui_gen_win_info* tui_disassem_exec_info_win_ptr () ;
 struct tui_gen_win_info* tui_source_exec_info_win_ptr () ;
 int tui_term_width () ;

__attribute__((used)) static void
make_source_or_disasm_window (struct tui_win_info * * win_info_ptr, enum tui_win_type type,
                             int height, int origin_y)
{
  struct tui_gen_win_info * execution_info = (struct tui_gen_win_info *) ((void*)0);




  if (type == SRC_WIN)
    execution_info = tui_source_exec_info_win_ptr ();
  else
    execution_info = tui_disassem_exec_info_win_ptr ();
  init_and_make_win ((void **) & execution_info,
     EXEC_INFO_WIN,
     height,
     3,
     0,
     origin_y,
     DONT_BOX_WINDOW);



  init_and_make_win ((void **) win_info_ptr,
     type,
     height,
     tui_term_width () - execution_info->width,
     execution_info->width,
     origin_y,
     BOX_WINDOW);

  (*win_info_ptr)->detail.source_info.execution_info = execution_info;
}
