
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_EDITOR ;
 int EL_HIST ;
 int EL_PROMPT ;
 int H_SETSIZE ;
 int ZERO (int ) ;
 int el_end (int *) ;
 int * el_init (int ,int ,int ,...) ;
 int el_set (int *,int ,...) ;
 int el_source (int *,int *) ;
 scalar_t__ estrdup (char const*) ;
 int fflush (int ) ;
 int free (scalar_t__) ;
 int hev ;
 int history (int *,int *,int ,int) ;
 int * history_init () ;
 scalar_t__ lineedit_prompt ;
 int mfprintf (int ,char*) ;
 int * ntp_el ;
 int * ntp_hist ;
 int ntp_prompt_callback ;
 int ntp_readline_initted ;
 int progname ;
 int stderr ;
 int stdin ;
 int stdout ;

int
ntp_readline_init(
 const char * prompt
 )
{
 int success;

 success = 1;

 if (prompt) {
  if (lineedit_prompt)
   free(lineedit_prompt);
  lineedit_prompt = estrdup(prompt);
 }
 ntp_readline_initted = success;

 return success;
}
