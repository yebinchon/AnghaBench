
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rl_prompt ;
 int tui_rl_saved_prompt ;
 int xfree (int ) ;
 int xstrdup (int ) ;

__attribute__((used)) static void
tui_prep_terminal (int notused1)
{



  xfree (tui_rl_saved_prompt);
  tui_rl_saved_prompt = xstrdup (rl_prompt);
}
