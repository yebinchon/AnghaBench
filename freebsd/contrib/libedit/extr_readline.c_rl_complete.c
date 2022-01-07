
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rl_compentry_func_t ;
typedef int ct_buffer_t ;


 int CC_REFRESH ;
 int _rl_completion_append_character_function ;
 int _rl_update_pos () ;
 int ct_decode_string (char const*,int *) ;
 int * e ;
 int el_insertstr (int *,char*) ;
 int fn_complete (int *,int *,int ,int ,int ,int ,size_t,int *,int *,int *,int *) ;
 int * h ;
 int rl_attempted_completion_function ;
 int rl_attempted_completion_over ;
 char const* rl_basic_word_break_characters ;
 scalar_t__ rl_completion_entry_function ;
 scalar_t__ rl_completion_query_items ;
 int rl_completion_type ;
 char* rl_completion_word_break_hook () ;
 int rl_end ;
 scalar_t__ rl_inhibit_completion ;
 int rl_initialize () ;
 int rl_point ;
 char* stub1 () ;

int
rl_complete(int ignore __attribute__((__unused__)), int invoking_key)
{
 static ct_buffer_t wbreak_conv, sprefix_conv;
 const char *breakchars;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();

 if (rl_inhibit_completion) {
  char arr[2];
  arr[0] = (char)invoking_key;
  arr[1] = '\0';
  el_insertstr(e, arr);
  return CC_REFRESH;
 }

 if (rl_completion_word_break_hook != ((void*)0))
  breakchars = (*rl_completion_word_break_hook)();
 else
  breakchars = rl_basic_word_break_characters;

 _rl_update_pos();


 return fn_complete(e,
     (rl_compentry_func_t *)rl_completion_entry_function,
     rl_attempted_completion_function,
     ct_decode_string(rl_basic_word_break_characters, &wbreak_conv),
     ct_decode_string(breakchars, &sprefix_conv),
     _rl_completion_append_character_function,
     (size_t)rl_completion_query_items,
     &rl_completion_type, &rl_attempted_completion_over,
     &rl_point, &rl_end);


}
