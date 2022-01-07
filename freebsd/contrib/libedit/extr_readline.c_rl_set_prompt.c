
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RL_PROMPT_END_IGNORE ;
 char RL_PROMPT_START_IGNORE ;
 int el_free (int *) ;
 int memmove (char*,char*,scalar_t__) ;
 int * rl_prompt ;
 char* strchr (int *,int ) ;
 scalar_t__ strcmp (int *,char const*) ;
 int * strdup (char const*) ;
 scalar_t__ strlen (char*) ;

int
rl_set_prompt(const char *prompt)
{
 char *p;

 if (!prompt)
  prompt = "";
 if (rl_prompt != ((void*)0) && strcmp(rl_prompt, prompt) == 0)
  return 0;
 if (rl_prompt)
  el_free(rl_prompt);
 rl_prompt = strdup(prompt);
 if (rl_prompt == ((void*)0))
  return -1;

 while ((p = strchr(rl_prompt, RL_PROMPT_END_IGNORE)) != ((void*)0)) {

  if (p[1] == RL_PROMPT_START_IGNORE) {
   memmove(p, p + 2, 1 + strlen(p + 2));
  } else {
   *p = RL_PROMPT_START_IGNORE;
  }
 }

 return 0;
}
