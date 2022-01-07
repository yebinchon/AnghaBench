
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint {struct action_line* actions; } ;
struct cleanup {int dummy; } ;
struct action_line {char* action; struct action_line* next; } ;
typedef enum actionline_type { ____Placeholder_actionline_type } actionline_type ;
typedef int FILE ;


 int BADLINE ;
 int END ;
 scalar_t__ ISATTY (int *) ;
 int SIG_DFL ;
 int STEPPING ;
 int STOP_SIGNAL ;
 int add_history (char*) ;
 int discard_cleanups (struct cleanup*) ;
 scalar_t__ event_loop_p ;
 int free_actions (struct tracepoint*) ;
 int gdb_flush (int ) ;
 char* gdb_readline (int ) ;
 char* gdb_readline_wrapper (char*) ;
 int gdb_stderr ;
 int gdb_stdout ;
 int handle_stop_sig ;
 int immediate_quit ;
 scalar_t__ job_control ;
 struct cleanup* make_cleanup_free_actions (struct tracepoint*) ;
 char* readline_hook (char*) ;
 int signal (int ,int ) ;
 int * stdin ;
 int stop_sig ;
 char* stub1 (char*) ;
 int validate_actionline (char**,struct tracepoint*) ;
 int warning (char*) ;
 int wrap_here (char*) ;
 struct action_line* xmalloc (int) ;

__attribute__((used)) static void
read_actions (struct tracepoint *t)
{
  char *line;
  char *prompt1 = "> ", *prompt2 = "  > ";
  char *prompt = prompt1;
  enum actionline_type linetype;
  extern FILE *instream;
  struct action_line *next = ((void*)0), *temp;
  struct cleanup *old_chain;



  immediate_quit++;
  old_chain = make_cleanup_free_actions (t);
  while (1)
    {


      wrap_here ("");
      gdb_flush (gdb_stdout);
      gdb_flush (gdb_stderr);

      if (readline_hook && instream == ((void*)0))
 line = (*readline_hook) (prompt);
      else if (instream == stdin && ISATTY (instream))
 {
   line = gdb_readline_wrapper (prompt);
   if (line && *line)
     add_history (line);
 }
      else
 line = gdb_readline (0);

      linetype = validate_actionline (&line, t);
      if (linetype == BADLINE)
 continue;

      temp = xmalloc (sizeof (struct action_line));
      temp->next = ((void*)0);
      temp->action = line;

      if (next == ((void*)0))
 t->actions = next = temp;
      else
 {
   next->next = temp;
   next = temp;
 }

      if (linetype == STEPPING)
 {
   if (prompt == prompt2)
     {
       warning ("Already processing 'while-stepping'");
       continue;
     }
   else
     prompt = prompt2;
 }
      else if (linetype == END)
 {
   if (prompt == prompt2)
     {
       prompt = prompt1;
     }
   else
     {
       if (t->actions->next == ((void*)0))
  {


    free_actions (t);
  }
       break;
     }
 }
    }




  immediate_quit--;
  discard_cleanups (old_chain);
}
