
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lock_quick_type ;


 char* CONFIGFILE ;
 int fatal_exit (char*) ;
 int getopt (int,char**,char*) ;
 int lock_quick_destroy (int *) ;
 scalar_t__ log_get_lock () ;
 int log_ident_set (char const*) ;
 int log_init (int *,int ,int *) ;
 char* optarg ;
 scalar_t__ optind ;
 int run_daemon (char const*,int,int,char const*,int) ;
 char* strrchr (char*,char) ;
 int usage () ;
 int verbosity ;
 int wsvc_command_option (char const*,char const*,int,int) ;

int
main(int argc, char* argv[])
{
 int c;
 const char* cfgfile = CONFIGFILE;
 const char* winopt = ((void*)0);
 const char* log_ident_default;
 int cmdline_verbose = 0;
 int debug_mode = 0;
 int need_pidfile = 1;





 log_init(((void*)0), 0, ((void*)0));
 log_ident_default = strrchr(argv[0],'/')?strrchr(argv[0],'/')+1:argv[0];
 log_ident_set(log_ident_default);

 while( (c=getopt(argc, argv, "c:dhpvw:")) != -1) {
  switch(c) {
  case 'c':
   cfgfile = optarg;



   break;
  case 'v':
   cmdline_verbose++;
   verbosity++;
   break;
  case 'p':
   need_pidfile = 0;
   break;
  case 'd':
   debug_mode++;
   break;
  case 'w':
   winopt = optarg;
   break;
  case '?':
  case 'h':
  default:
   usage();
   return 1;
  }
 }
 argc -= optind;


 if(winopt) {




  fatal_exit("option not supported");

 }

 if(argc != 0) {
  usage();
  return 1;
 }

 run_daemon(cfgfile, cmdline_verbose, debug_mode, log_ident_default, need_pidfile);
 log_init(((void*)0), 0, ((void*)0));

 if(log_get_lock()) {
  lock_quick_destroy((lock_quick_type*)log_get_lock());
 }

 return 0;
}
