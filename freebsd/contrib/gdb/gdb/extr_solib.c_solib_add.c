
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct so_list {char* so_name; int symbols_loaded; struct so_list* next; } ;


 int RETURN_MASK_ALL ;
 int TARGET_SO_SPECIAL_SYMBOL_HANDLING () ;
 scalar_t__ catch_errors (int ,struct so_list*,char*,int ) ;
 int error (char*,char*) ;
 int printf_unfiltered (char*,char*) ;
 char* re_comp (char*) ;
 scalar_t__ re_exec (char*) ;
 int reinit_frame_cache () ;
 struct so_list* so_list_head ;
 int symbol_add_stub ;
 int update_solib_list (int,struct target_ops*) ;

void
solib_add (char *pattern, int from_tty, struct target_ops *target, int readsyms)
{
  struct so_list *gdb;

  if (pattern)
    {
      char *re_err = re_comp (pattern);

      if (re_err)
 error ("Invalid regexp: %s", re_err);
    }

  update_solib_list (from_tty, target);




  {
    int any_matches = 0;
    int loaded_any_symbols = 0;

    for (gdb = so_list_head; gdb; gdb = gdb->next)
      if (! pattern || re_exec (gdb->so_name))
 {
   any_matches = 1;

   if (gdb->symbols_loaded)
     {
       if (from_tty)
  printf_unfiltered ("Symbols already loaded for %s\n",
       gdb->so_name);
     }
   else if (readsyms)
     {
       if (catch_errors
    (symbol_add_stub, gdb,
     "Error while reading shared library symbols:\n",
     RETURN_MASK_ALL))
  {
    if (from_tty)
      printf_unfiltered ("Loaded symbols for %s\n",
           gdb->so_name);
    gdb->symbols_loaded = 1;
    loaded_any_symbols = 1;
  }
     }
 }

    if (from_tty && pattern && ! any_matches)
      printf_unfiltered
 ("No loaded shared libraries match the pattern `%s'.\n", pattern);

    if (loaded_any_symbols)
      {


 reinit_frame_cache ();

 TARGET_SO_SPECIAL_SYMBOL_HANDLING ();
      }
  }
}
