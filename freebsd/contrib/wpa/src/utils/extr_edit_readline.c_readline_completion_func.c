
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t os_strlen (char const*) ;
 scalar_t__* pending_completions ;
 int rl_attempted_completion_over ;
 char* strdup (scalar_t__) ;
 scalar_t__ strncmp (scalar_t__,char const*,size_t) ;

__attribute__((used)) static char * readline_completion_func(const char *text, int state)
{
 static int pos = 0;
 static size_t len = 0;

 if (pending_completions == ((void*)0)) {
  rl_attempted_completion_over = 1;
  return ((void*)0);
 }

 if (state == 0) {
  pos = 0;
  len = os_strlen(text);
 }
 for (; pending_completions[pos]; pos++) {
  if (strncmp(pending_completions[pos], text, len) == 0)
   return strdup(pending_completions[pos++]);
 }

 rl_attempted_completion_over = 1;
 return ((void*)0);
}
