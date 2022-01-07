
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int annotation_level ;
 int async_request_quit (int ) ;
 int dont_repeat () ;
 int event_loop_p ;
 char* gdb_readline_wrapper (char*) ;
 int immediate_quit ;
 int printf_unfiltered (char*) ;
 int reinitialize_more_filter () ;
 int request_quit (int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int xfree (char*) ;

__attribute__((used)) static void
prompt_for_continue (void)
{
  char *ignore;
  char cont_prompt[120];

  if (annotation_level > 1)
    printf_unfiltered ("\n\032\032pre-prompt-for-continue\n");

  strcpy (cont_prompt,
   "---Type <return> to continue, or q <return> to quit---");
  if (annotation_level > 1)
    strcat (cont_prompt, "\n\032\032prompt-for-continue\n");




  reinitialize_more_filter ();

  immediate_quit++;
  ignore = gdb_readline_wrapper (cont_prompt);

  if (annotation_level > 1)
    printf_unfiltered ("\n\032\032post-prompt-for-continue\n");

  if (ignore)
    {
      char *p = ignore;
      while (*p == ' ' || *p == '\t')
 ++p;
      if (p[0] == 'q')
 {
   if (!event_loop_p)
     request_quit (SIGINT);
   else
     async_request_quit (0);
 }
      xfree (ignore);
    }
  immediate_quit--;



  reinitialize_more_filter ();

  dont_repeat ();
}
