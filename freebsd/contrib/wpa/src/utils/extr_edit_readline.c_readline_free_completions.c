
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (int *****) ;
 int ***** pending_completions ;

__attribute__((used)) static void readline_free_completions(void)
{
 int i;
 if (pending_completions == ((void*)0))
  return;
 for (i = 0; pending_completions[i]; i++)
  os_free(pending_completions[i]);
 os_free(pending_completions);
 pending_completions = ((void*)0);
}
