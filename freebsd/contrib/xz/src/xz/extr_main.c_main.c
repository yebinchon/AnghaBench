
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum exit_status_type { ____Placeholder_exit_status_type } exit_status_type ;
struct TYPE_4__ {int arg_count; char** arg_names; int files_file; int * files_name; } ;
typedef TYPE_1__ args_info ;


 int E_ERROR ;
 int E_SUCCESS ;
 int E_WARNING ;
 int EnterCriticalSection (int *) ;
 int InitializeCriticalSection (int *) ;
 int LOCALEDIR ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ MODE_COMPRESS ;
 scalar_t__ MODE_LIST ;
 int PACKAGE ;
 scalar_t__ V_SILENT ;
 int _ (char*) ;
 int args_free () ;
 int args_parse (TYPE_1__*,int,char**) ;
 int assert (int) ;
 int coder_free () ;
 void coder_run (char const*) ;
 int exit_status ;
 int exit_status_cs ;
 int fclose (int ) ;
 int hardware_init () ;
 int io_allow_sandbox () ;
 int io_init () ;
 scalar_t__ is_tty_stdin () ;
 scalar_t__ is_tty_stdout () ;
 void list_file (char const*) ;
 int list_totals () ;
 int message_error (int ) ;
 int message_fatal (int ) ;
 int message_init () ;
 int message_set_files (int) ;
 int message_try_help () ;
 scalar_t__ message_verbosity_get () ;
 scalar_t__ no_warn ;
 scalar_t__ opt_mode ;
 scalar_t__ opt_robot ;
 scalar_t__ opt_stdout ;
 char* read_name (TYPE_1__*) ;
 int signals_exit () ;
 int signals_init () ;
 int * stdin_filename ;
 scalar_t__ strcmp (char*,char*) ;
 int tuklib_exit (int,int,int) ;
 int tuklib_gettext_init (int ,int ) ;
 int tuklib_progname_init (char**) ;
 int user_abort ;

int
main(int argc, char **argv)
{





 tuklib_progname_init(argv);



 io_init();


 tuklib_gettext_init(PACKAGE, LOCALEDIR);


 message_init();



 hardware_init();





 args_info args;
 args_parse(&args, argc, argv);

 if (opt_mode != MODE_LIST && opt_robot)
  message_fatal(_("Compression and decompression with --robot "
   "are not supported yet."));



 if (args.files_name != ((void*)0))
  message_set_files(0);
 else
  message_set_files(args.arg_count);



 if (opt_mode == MODE_COMPRESS) {
  if (opt_stdout || (args.arg_count == 1
    && strcmp(args.arg_names[0], "-") == 0)) {
   if (is_tty_stdout()) {
    message_try_help();
    tuklib_exit(E_ERROR, E_ERROR, 0);
   }
  }
 }
 if (opt_mode != MODE_LIST)
  signals_init();
 void (*run)(const char *filename) = &coder_run;







 for (unsigned i = 0; i < args.arg_count && !user_abort; ++i) {
  if (strcmp("-", args.arg_names[i]) == 0) {



   if (opt_mode == MODE_COMPRESS) {
    if (is_tty_stdout())
     continue;
   } else if (is_tty_stdin()) {
    continue;
   }




   if (args.files_name == stdin_filename) {
    message_error(_("Cannot read data from "
      "standard input when "
      "reading filenames "
      "from standard input"));
    continue;
   }






   args.arg_names[i] = (char *)stdin_filename;
  }


  run(args.arg_names[i]);
 }




 if (args.files_name != ((void*)0)) {


  while (1) {
   const char *name = read_name(&args);
   if (name == ((void*)0))
    break;


   assert(name[0] != '\0');
   run(name);
  }

  if (args.files_name != stdin_filename)
   (void)fclose(args.files_file);
 }
 coder_free();
 args_free();




 signals_exit();
 enum exit_status_type es = exit_status;







 if (es == E_WARNING && no_warn)
  es = E_SUCCESS;

 tuklib_exit(es, E_ERROR, message_verbosity_get() != V_SILENT);
}
