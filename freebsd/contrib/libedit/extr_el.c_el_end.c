
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {TYPE_4__* wbuff; TYPE_4__* cbuff; } ;
struct TYPE_19__ {TYPE_4__* wbuff; TYPE_4__* cbuff; } ;
struct TYPE_18__ {TYPE_4__* wbuff; TYPE_4__* cbuff; } ;
struct TYPE_21__ {int el_flags; TYPE_3__ el_lgcyconv; TYPE_2__ el_scratch; TYPE_1__ el_visual; struct TYPE_21__* el_prog; int el_read; } ;
typedef TYPE_4__ EditLine ;


 int NO_TTY ;
 int TCSAFLUSH ;
 int ch_end (TYPE_4__*) ;
 int el_free (TYPE_4__*) ;
 int el_reset (TYPE_4__*) ;
 int hist_end (TYPE_4__*) ;
 int keymacro_end (TYPE_4__*) ;
 int literal_end (TYPE_4__*) ;
 int map_end (TYPE_4__*) ;
 int prompt_end (TYPE_4__*) ;
 int read_end (int ) ;
 int search_end (TYPE_4__*) ;
 int sig_end (TYPE_4__*) ;
 int terminal_end (TYPE_4__*) ;
 int tty_end (TYPE_4__*,int ) ;

void
el_end(EditLine *el)
{

 if (el == ((void*)0))
  return;

 el_reset(el);

 terminal_end(el);
 keymacro_end(el);
 map_end(el);
 if (!(el->el_flags & NO_TTY))
  tty_end(el, TCSAFLUSH);
 ch_end(el);
 read_end(el->el_read);
 search_end(el);
 hist_end(el);
 prompt_end(el);
 sig_end(el);
 literal_end(el);

 el_free(el->el_prog);
 el_free(el->el_visual.cbuff);
 el_free(el->el_visual.wbuff);
 el_free(el->el_scratch.cbuff);
 el_free(el->el_scratch.wbuff);
 el_free(el->el_lgcyconv.cbuff);
 el_free(el->el_lgcyconv.wbuff);
 el_free(el);
}
