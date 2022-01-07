
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HistEvent ;


 int EL_ADDFN ;
 int EL_BIND ;
 int EL_EDITMODE ;
 int EL_EDITOR ;
 int EL_HIST ;
 int EL_PROMPT ;
 int EL_RPROMPT ;
 int EL_SIGNAL ;
 int H_SETSIZE ;
 int complete ;
 scalar_t__ editing ;
 int * el ;
 int el_end (int *) ;
 int el_get (int *,int ,int*) ;
 int * el_init (int ,int ,int ,int ) ;
 int el_set (int *,int ,...) ;
 int el_source (int *,int *) ;
 int getprogname () ;
 int * hist ;
 int history (int *,int *,int ,int) ;
 int history_end (int *) ;
 int * history_init () ;
 int prompt ;
 int rprompt ;
 int stderr ;
 int stdin ;
 int ttyout ;

void
controlediting(void)
{
 if (editing && el == ((void*)0) && hist == ((void*)0)) {
  HistEvent ev;
  int editmode;

  el = el_init(getprogname(), stdin, ttyout, stderr);

  hist = history_init();
  history(hist, &ev, H_SETSIZE, 100);
  el_set(el, EL_HIST, history, hist);

  el_set(el, EL_EDITOR, "emacs");
  el_set(el, EL_PROMPT, prompt);
  el_set(el, EL_RPROMPT, rprompt);


  el_set(el, EL_ADDFN, "ftp-complete",
      "Context sensitive argument completion",
      complete);
  el_set(el, EL_BIND, "^I", "ftp-complete", ((void*)0));
  el_source(el, ((void*)0));
  if ((el_get(el, EL_EDITMODE, &editmode) != -1) && editmode == 0)
   editing = 0;


  else
   el_set(el, EL_SIGNAL, 1);
 }
 if (!editing) {
  if (hist) {
   history_end(hist);
   hist = ((void*)0);
  }
  if (el) {
   el_end(el);
   el = ((void*)0);
  }
 }
}
