
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int return_mask ;
typedef enum return_reason { ____Placeholder_return_reason } return_reason ;
typedef int (* catch_exceptions_ftype ) (struct ui_out*,void*) ;
typedef int SIGJMP_BUF ;


 int RETURN_MASK (int) ;
 int RETURN_MASK_ERROR ;
 int RETURN_MASK_QUIT ;
 int SIGSETJMP (int ) ;
 int * catch_return ;
 char* error_last_message () ;
 char* error_pre_print ;
 char* quit_pre_print ;
 int restore_cleanups (struct cleanup*) ;
 struct cleanup* save_cleanups () ;
 int stub1 (struct ui_out*,void*) ;
 int throw_exception (int) ;
 struct ui_out* uiout ;

__attribute__((used)) static void
catcher (catch_exceptions_ftype *func,
  struct ui_out *func_uiout,
  void *func_args,
  int *func_val,
  enum return_reason *func_caught,
  char *errstring,
  char **gdberrmsg,
  return_mask mask)
{
  SIGJMP_BUF *saved_catch;
  SIGJMP_BUF catch;
  struct cleanup *saved_cleanup_chain;
  char *saved_error_pre_print;
  char *saved_quit_pre_print;
  struct ui_out *saved_uiout;



  int caught;



  int val;



  saved_error_pre_print = error_pre_print;
  saved_quit_pre_print = quit_pre_print;

  if (mask & RETURN_MASK_ERROR)
    error_pre_print = errstring;
  if (mask & RETURN_MASK_QUIT)
    quit_pre_print = errstring;



  saved_uiout = uiout;
  uiout = func_uiout;




  saved_cleanup_chain = save_cleanups ();



  saved_catch = catch_return;
  catch_return = &catch;
  caught = SIGSETJMP (catch);
  if (!caught)
    val = (*func) (func_uiout, func_args);
  else
    {
      val = 0;



      if (gdberrmsg)
 *gdberrmsg = error_last_message ();
    }
  catch_return = saved_catch;
  restore_cleanups (saved_cleanup_chain);

  uiout = saved_uiout;

  if (mask & RETURN_MASK_QUIT)
    quit_pre_print = saved_quit_pre_print;
  if (mask & RETURN_MASK_ERROR)
    error_pre_print = saved_error_pre_print;





  if (!caught || (mask & RETURN_MASK (caught)))
    {
      *func_val = val;
      *func_caught = caught;
      return;
    }




  throw_exception (caught);
}
