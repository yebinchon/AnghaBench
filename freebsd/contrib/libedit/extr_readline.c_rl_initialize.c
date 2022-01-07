
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; } ;
typedef int HistEvent ;


 int ECHO ;
 int EL_ADDFN ;
 int EL_BIND ;
 int EL_EDITMODE ;
 int EL_EDITOR ;
 int EL_GETCFN ;
 int EL_HIST ;
 int EL_PROMPT_ESC ;
 int EL_RESIZE ;
 int EL_SIGNAL ;
 int EL_TERMINAL ;
 int H_SETSIZE ;
 int INT_MAX ;
 int NO_RESET ;
 int RL_PROMPT_START_IGNORE ;
 int TCSADRAIN ;
 int * _el_rl_complete ;
 int * _el_rl_tstp ;
 int _get_prompt ;
 int _getc_function ;
 int _resize_fun (int *,int *) ;
 int _rl_update_pos () ;
 int * e ;
 int el_end (int *) ;
 int el_get (int *,int ,int **) ;
 int * el_init_internal (int ,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int el_set (int *,int ,...) ;
 int el_source (int *,int *) ;
 int fileno (scalar_t__) ;
 int * h ;
 int history (int *,int *,int ,int ) ;
 int history_end (int *) ;
 int * history_init () ;
 scalar_t__ history_length ;
 int max_input_history ;
 int rl_catch_signals ;
 scalar_t__ rl_getc_function ;
 scalar_t__ rl_instream ;
 int rl_line_buffer ;
 scalar_t__ rl_outstream ;
 int rl_readline_name ;
 int rl_set_prompt (char*) ;
 int * rl_terminal_name ;
 scalar_t__ stderr ;
 scalar_t__ stdin ;
 scalar_t__ stdout ;
 int tcgetattr (int ,struct termios*) ;
 int tty_end (int *,int ) ;

int
rl_initialize(void)
{
 HistEvent ev;
 int editmode = 1;
 struct termios t;

 if (e != ((void*)0))
  el_end(e);
 if (h != ((void*)0))
  history_end(h);

 if (!rl_instream)
  rl_instream = stdin;
 if (!rl_outstream)
  rl_outstream = stdout;




 if (tcgetattr(fileno(rl_instream), &t) != -1 && (t.c_lflag & ECHO) == 0)
  editmode = 0;

 e = el_init_internal(rl_readline_name, rl_instream, rl_outstream,
     stderr, fileno(rl_instream), fileno(rl_outstream), fileno(stderr),
     NO_RESET);

 if (!editmode)
  el_set(e, EL_EDITMODE, 0);

 h = history_init();
 if (!e || !h)
  return -1;

 history(h, &ev, H_SETSIZE, INT_MAX);
 history_length = 0;
 max_input_history = INT_MAX;
 el_set(e, EL_HIST, history, h);


 el_set(e, EL_RESIZE, _resize_fun, &rl_line_buffer);


 if (rl_getc_function)
  el_set(e, EL_GETCFN, _getc_function);


 if (rl_set_prompt("") == -1) {
  history_end(h);
  el_end(e);
  return -1;
 }
 el_set(e, EL_PROMPT_ESC, _get_prompt, RL_PROMPT_START_IGNORE);
 el_set(e, EL_SIGNAL, rl_catch_signals);



 el_set(e, EL_EDITOR, "emacs");
 if (rl_terminal_name != ((void*)0))
  el_set(e, EL_TERMINAL, rl_terminal_name);
 else
  el_get(e, EL_TERMINAL, &rl_terminal_name);





 el_set(e, EL_ADDFN, "rl_complete",
     "ReadLine compatible completion function",
     _el_rl_complete);
 el_set(e, EL_BIND, "^I", "rl_complete", ((void*)0));




 el_set(e, EL_ADDFN, "rl_tstp",
     "ReadLine compatible suspend function",
     _el_rl_tstp);
 el_set(e, EL_BIND, "^Z", "rl_tstp", ((void*)0));




 el_set(e, EL_BIND, "^R", "em-inc-search-prev", ((void*)0));




 el_set(e, EL_BIND, "\\e[1~", "ed-move-to-beg", ((void*)0));
 el_set(e, EL_BIND, "\\e[4~", "ed-move-to-end", ((void*)0));
 el_set(e, EL_BIND, "\\e[7~", "ed-move-to-beg", ((void*)0));
 el_set(e, EL_BIND, "\\e[8~", "ed-move-to-end", ((void*)0));
 el_set(e, EL_BIND, "\\e[H", "ed-move-to-beg", ((void*)0));
 el_set(e, EL_BIND, "\\e[F", "ed-move-to-end", ((void*)0));




 el_set(e, EL_BIND, "\\e[3~", "ed-delete-next-char", ((void*)0));
 el_set(e, EL_BIND, "\\e[2~", "ed-quoted-insert", ((void*)0));




 el_set(e, EL_BIND, "\\e[1;5C", "em-next-word", ((void*)0));
 el_set(e, EL_BIND, "\\e[1;5D", "ed-prev-word", ((void*)0));
 el_set(e, EL_BIND, "\\e[5C", "em-next-word", ((void*)0));
 el_set(e, EL_BIND, "\\e[5D", "ed-prev-word", ((void*)0));
 el_set(e, EL_BIND, "\\e\\e[C", "em-next-word", ((void*)0));
 el_set(e, EL_BIND, "\\e\\e[D", "ed-prev-word", ((void*)0));


 el_source(e, ((void*)0));





 _resize_fun(e, &rl_line_buffer);
 _rl_update_pos();

 tty_end(e, TCSADRAIN);

 return 0;
}
