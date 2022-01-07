
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edit_cb_ctx ;
 int edit_completion_cb (int ,int ,int) ;
 int pending_completions ;
 int readline_completion_func ;
 int readline_free_completions () ;
 char** rl_completion_matches (char const*,int ) ;
 int rl_line_buffer ;

__attribute__((used)) static char ** readline_completion(const char *text, int start, int end)
{
 readline_free_completions();
 if (edit_completion_cb)
  pending_completions = edit_completion_cb(edit_cb_ctx,
        rl_line_buffer, end);
 return rl_completion_matches(text, readline_completion_func);
}
