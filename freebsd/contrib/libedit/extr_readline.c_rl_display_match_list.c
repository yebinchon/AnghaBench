
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _rl_completion_append_character_function ;
 int e ;
 int fn_display_match_list (int ,char**,size_t,size_t,int ) ;

void
rl_display_match_list(char **matches, int len, int max)
{

 fn_display_match_list(e, matches, (size_t)len, (size_t)max,
  _rl_completion_append_character_function);
}
