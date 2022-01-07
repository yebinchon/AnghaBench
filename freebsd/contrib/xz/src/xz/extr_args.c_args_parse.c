
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char files_delim; char** arg_names; int arg_count; int * files_name; int * files_file; } ;
typedef TYPE_1__ args_info ;


 scalar_t__ FORMAT_AUTO ;
 scalar_t__ FORMAT_LZMA ;
 scalar_t__ FORMAT_RAW ;
 scalar_t__ FORMAT_XZ ;
 scalar_t__ MODE_COMPRESS ;
 scalar_t__ MODE_DECOMPRESS ;
 scalar_t__ MODE_TEST ;
 int _ (char*) ;
 int coder_set_compression_settings () ;
 int message_fatal (int ) ;
 scalar_t__ opt_format ;
 int opt_keep_original ;
 scalar_t__ opt_mode ;
 int opt_stdout ;
 size_t optind ;
 int parse_environment (TYPE_1__*,char*,char*) ;
 int parse_real (TYPE_1__*,int,char**) ;
 char* strrchr (char*,char) ;
 int * strstr (char const*,char*) ;

extern void
args_parse(args_info *args, int argc, char **argv)
{

 args->files_name = ((void*)0);
 args->files_file = ((void*)0);
 args->files_delim = '\0';


 {

  const char *name = strrchr(argv[0], '/');
  if (name == ((void*)0))
   name = argv[0];
  else
   ++name;







  if (strstr(name, "xzcat") != ((void*)0)) {
   opt_mode = MODE_DECOMPRESS;
   opt_stdout = 1;
  } else if (strstr(name, "unxz") != ((void*)0)) {
   opt_mode = MODE_DECOMPRESS;
  } else if (strstr(name, "lzcat") != ((void*)0)) {
   opt_format = FORMAT_LZMA;
   opt_mode = MODE_DECOMPRESS;
   opt_stdout = 1;
  } else if (strstr(name, "unlzma") != ((void*)0)) {
   opt_format = FORMAT_LZMA;
   opt_mode = MODE_DECOMPRESS;
  } else if (strstr(name, "lzma") != ((void*)0)) {
   opt_format = FORMAT_LZMA;
  }
 }


 parse_environment(args, argv[0], "XZ_DEFAULTS");
 parse_environment(args, argv[0], "XZ_OPT");


 parse_real(args, argc, argv);





 if (opt_mode == MODE_COMPRESS)
  message_fatal(_("Compression support was disabled "
    "at build time"));




 if (opt_mode != MODE_COMPRESS)
  message_fatal(_("Decompression support was disabled "
    "at build time"));





 if (opt_stdout || opt_mode == MODE_TEST) {
  opt_keep_original = 1;
  opt_stdout = 1;
 }



 if (opt_mode == MODE_COMPRESS && opt_format == FORMAT_AUTO)
  opt_format = FORMAT_XZ;






 if (opt_mode == MODE_COMPRESS || opt_format == FORMAT_RAW)
  coder_set_compression_settings();


 if (argv[optind] == ((void*)0) && args->files_name == ((void*)0)) {


  static char *names_stdin[2] = { (char *)"-", ((void*)0) };
  args->arg_names = names_stdin;
  args->arg_count = 1;
 } else {


  args->arg_names = argv + optind;
  args->arg_count = argc - optind;
 }

 return;
}
