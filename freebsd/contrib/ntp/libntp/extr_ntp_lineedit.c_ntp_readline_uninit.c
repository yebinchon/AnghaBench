
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int el_end (int *) ;
 int free (int *) ;
 int history_end (int *) ;
 int * lineedit_prompt ;
 int * ntp_el ;
 int * ntp_hist ;
 scalar_t__ ntp_readline_initted ;

void
ntp_readline_uninit(
 void
 )
{
 if (lineedit_prompt) {
  free(lineedit_prompt);
  lineedit_prompt = ((void*)0);
 }

 ntp_readline_initted = 0;
}
