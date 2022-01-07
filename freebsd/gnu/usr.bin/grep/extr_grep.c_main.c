
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef scalar_t__ wchar_t ;
typedef scalar_t__ uintmax_t ;
typedef int mbstate_t ;
typedef int FILE ;


 int BINARY_BINARY_FILES ;

 int BZflag ;

 int DOS_BINARY ;




 int LC_ALL ;

 int LOCALEDIR ;


 int MB_CUR_MAX ;
 int PACKAGE ;
 int READ_DEVICES ;
 int READ_DIRECTORIES ;
 int RECURSE_DIRECTORIES ;
 int SET_BINARY (int) ;
 int SKIP_DEVICES ;
 int SKIP_DIRECTORIES ;
 int STDOUT_FILENO ;
 int TEXT_BINARY_FILES ;
 scalar_t__ TYPE_MAXIMUM (int ) ;
 char* VERSION ;
 int WITHOUT_MATCH_BINARY_FILES ;
 int Zflag ;
 char* _ (char*) ;
 int abort () ;
 int add_exclude (scalar_t__,char*) ;
 int add_exclude_file (int (*) (scalar_t__,char*),scalar_t__,char*,char) ;
 int atexit (int ) ;
 int binary_files ;
 int bindtextdomain (int ,int ) ;
 int close_stdout ;
 int close_stdout_set_status (int ) ;
 int color_option ;
 int compile (char*,size_t) ;
 int context_length_arg (char*,int*) ;
 int count_matches ;
 int devices ;
 int directories ;
 int done_on_match ;
 int dos_report_unix_offset ;
 int dos_use_file_type ;
 char eolbyte ;
 int errno ;
 int error (int,int ,char*,...) ;
 scalar_t__ errseen ;
 scalar_t__ excluded_filename (scalar_t__,char*,int ) ;
 scalar_t__ excluded_patterns ;
 int exit (int) ;
 int exit_on_match ;
 int fclose (int *) ;
 int feof (int *) ;
 int filename_mask ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,int ,int *) ;
 int get_nondigit_option (int,char**,int*) ;
 char* getenv (char*) ;
 char* grep_color ;
 int grepfile (char*,int *) ;
 scalar_t__ included_patterns ;
 int initialize_main (int*,char***) ;
 int install_matcher (char*) ;
 scalar_t__ isatty (int) ;
 int isdir (char*) ;
 scalar_t__ iswupper (int ) ;
 char* label ;
 int line_buffered ;
 int list_files ;
 int match_icase ;
 int match_lines ;
 int match_words ;
 char* matcher ;
 scalar_t__ max_count ;
 size_t mbrtowc (scalar_t__*,char*,int,int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ new_exclude () ;
 int no_filenames ;
 int off_t ;
 int only_matching ;
 int out_after ;
 int out_before ;
 int out_byte ;
 int out_file ;
 int out_invert ;
 int out_line ;
 int out_quiet ;
 int prepend_default_options (char*,int*,char***) ;
 int printf (char*,...) ;
 char* program_name ;
 int setlocale (int ,char*) ;
 int setmatcher (char*) ;
 int show_help ;
 int show_version ;
 int stats_base ;
 int * stdin ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 void* strlen (char*) ;
 char* strrchr (char*,char) ;
 int stub1 (char*,size_t) ;
 int suppress_errors ;
 int textdomain (int ) ;
 scalar_t__ towlower (int ) ;
 int usage (int) ;
 int wcrtomb (char*,scalar_t__,int *) ;
 char* xrealloc (char*,size_t) ;
 int xstrtoumax (char*,int ,int,scalar_t__*,char*) ;

int
main (int argc, char **argv)
{
  char *keys;
  size_t cc, keycc, oldcc, keyalloc;
  int with_filenames;
  int opt, status;
  int default_context;
  FILE *fp;
  extern char *optarg;
  extern int optind;

  initialize_main (&argc, &argv);
  program_name = argv[0];
  if (program_name && strrchr (program_name, '/'))
    program_name = strrchr (program_name, '/') + 1;

  if (program_name[0] == 'b' && program_name[1] == 'z') {
    BZflag = 1;
    program_name += 2;
  }
  keys = ((void*)0);
  keycc = 0;
  with_filenames = 0;
  eolbyte = '\n';
  filename_mask = ~0;

  max_count = TYPE_MAXIMUM (off_t);


  out_after = out_before = -1;

  default_context = 0;

  only_matching = 0;
  atexit (close_stdout);

  prepend_default_options (getenv ("GREP_OPTIONS"), &argc, &argv);

  while ((opt = get_nondigit_option (argc, argv, &default_context)) != -1)
    switch (opt)
      {
      case 'A':
 context_length_arg (optarg, &out_after);
 break;

      case 'B':
 context_length_arg (optarg, &out_before);
 break;

      case 'C':


 context_length_arg (optarg, &default_context);
 break;

      case 'D':
 if (strcmp (optarg, "read") == 0)
   devices = READ_DEVICES;
 else if (strcmp (optarg, "skip") == 0)
   devices = SKIP_DEVICES;
 else
   error (2, 0, _("unknown devices method"));
 break;

      case 'E':
 setmatcher ("egrep");
 break;

      case 'F':
 setmatcher ("fgrep");
 break;

      case 'P':
 setmatcher ("perl");
 break;

      case 'G':
 setmatcher ("grep");
 break;

      case 'H':
 with_filenames = 1;
 break;

      case 'I':
 binary_files = WITHOUT_MATCH_BINARY_FILES;
 break;
      case 'J':
 if (Zflag)
   {
     printf (_("Cannot mix -Z and -J.\n"));
     usage (2);
   }
 BZflag = 1;
 break;

      case 'U':



 break;

      case 'u':



 break;

      case 'V':
 show_version = 1;
 break;

      case 'X':
 setmatcher (optarg);
 break;

      case 'a':
 binary_files = TEXT_BINARY_FILES;
 break;

      case 'b':
 out_byte = 1;
 break;

      case 'c':
 count_matches = 1;
 break;

      case 'd':
 if (strcmp (optarg, "read") == 0)
   directories = READ_DIRECTORIES;
 else if (strcmp (optarg, "skip") == 0)
   directories = SKIP_DIRECTORIES;
 else if (strcmp (optarg, "recurse") == 0)
   directories = RECURSE_DIRECTORIES;
 else
   error (2, 0, _("unknown directories method"));
 break;

      case 'e':
 cc = strlen (optarg);
 keys = xrealloc (keys, keycc + cc + 1);
 strcpy (&keys[keycc], optarg);
 keycc += cc;
 keys[keycc++] = '\n';
 break;

      case 'f':
 fp = strcmp (optarg, "-") != 0 ? fopen (optarg, "r") : stdin;
 if (!fp)
   error (2, errno, "%s", optarg);
 for (keyalloc = 1; keyalloc <= keycc + 1; keyalloc *= 2)
   ;
 keys = xrealloc (keys, keyalloc);
 oldcc = keycc;
 while (!feof (fp)
        && (cc = fread (keys + keycc, 1, keyalloc - 1 - keycc, fp)) > 0)
   {
     keycc += cc;
     if (keycc == keyalloc - 1)
       keys = xrealloc (keys, keyalloc *= 2);
   }
 if (fp != stdin)
   fclose(fp);

 if (oldcc != keycc && keys[keycc - 1] != '\n')
   keys[keycc++] = '\n';
 break;

      case 'h':
 no_filenames = 1;
 break;

      case 'i':
      case 'y':
 match_icase = 1;
 break;

      case 'L':


 list_files = -1;
 break;

      case 'l':
 list_files = 1;
 break;

      case 'm':
 {
   uintmax_t value;
   switch (xstrtoumax (optarg, 0, 10, &value, ""))
     {
     case 129:
       max_count = value;
       if (0 <= max_count && max_count == value)
  break;

     case 128:
       max_count = TYPE_MAXIMUM (off_t);
       break;

     default:
       error (2, 0, _("invalid max count"));
     }
 }
 break;

      case 'n':
 out_line = 1;
 break;

      case 'o':
 only_matching = 1;
 break;

      case 'q':
 exit_on_match = 1;
 close_stdout_set_status(0);
 break;

      case 'R':
      case 'r':
 directories = RECURSE_DIRECTORIES;
 break;

      case 's':
 suppress_errors = 1;
 break;

      case 'v':
 out_invert = 1;
 break;

      case 'w':
 match_words = 1;
 break;

      case 'x':
 match_lines = 1;
 break;

      case 'Z':
 filename_mask = 0;

 break;

      case 'z':
 eolbyte = '\0';
 break;

      case 136:
 if (strcmp (optarg, "binary") == 0)
   binary_files = BINARY_BINARY_FILES;
 else if (strcmp (optarg, "text") == 0)
   binary_files = TEXT_BINARY_FILES;
 else if (strcmp (optarg, "without-match") == 0)
   binary_files = WITHOUT_MATCH_BINARY_FILES;
 else
   error (2, 0, _("unknown binary-files type"));
 break;

      case 135:
        if(optarg) {
          if(!strcasecmp(optarg, "always") || !strcasecmp(optarg, "yes") ||
             !strcasecmp(optarg, "force"))
            color_option = 1;
          else if(!strcasecmp(optarg, "never") || !strcasecmp(optarg, "no") ||
                  !strcasecmp(optarg, "none"))
            color_option = 0;
          else if(!strcasecmp(optarg, "auto") || !strcasecmp(optarg, "tty") ||
                  !strcasecmp(optarg, "if-tty"))
            color_option = 2;
          else
            show_help = 1;
        } else
          color_option = 2;
        if(color_option == 2) {
          if(isatty(STDOUT_FILENO) && getenv("TERM") &&
      strcmp(getenv("TERM"), "dumb"))
                  color_option = 1;
          else
            color_option = 0;
        }
 break;

      case 133:
 if (!excluded_patterns)
   excluded_patterns = new_exclude ();
 add_exclude (excluded_patterns, optarg);
 break;

      case 134:
 if (!excluded_patterns)
   excluded_patterns = new_exclude ();
        if (add_exclude_file (add_exclude, excluded_patterns, optarg, '\n')
     != 0)
          {
            error (2, errno, "%s", optarg);
          }
        break;

      case 132:
 if (!included_patterns)
   included_patterns = new_exclude ();
 add_exclude (included_patterns, optarg);
 break;

      case 130:
 line_buffered = 1;
 break;

      case 131:
 label = optarg;
 break;

      case 0:

 break;

      default:
 usage (2);
 break;

      }



  if (exit_on_match)
    list_files = 0;
  if (exit_on_match | list_files)
    {
      count_matches = 0;
      done_on_match = 1;
    }
  out_quiet = count_matches | done_on_match;

  if (out_after < 0)
    out_after = default_context;
  if (out_before < 0)
    out_before = default_context;

  if (color_option)
    {
      char *userval = getenv ("GREP_COLOR");
      if (userval != ((void*)0) && *userval != '\0')
 grep_color = userval;
    }

  if (! matcher)
    matcher = program_name;

  if (show_version)
    {
      printf (_("%s (GNU grep) %s\n"), matcher, VERSION);
      printf ("\n");
      printf (_("Copyright 1988, 1992-1999, 2000, 2001 Free Software Foundation, Inc.\n"));

      printf (_("This is free software; see the source for copying conditions. There is NO\nwarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\n"));


      printf ("\n");
      exit (0);
    }

  if (show_help)
    usage (0);

  if (keys)
    {
      if (keycc == 0)
 {

   out_invert ^= 1;
   match_lines = match_words = 0;
 }
      else

        --keycc;
    }
  else
    if (optind < argc)
      {
 keys = argv[optind++];
 keycc = strlen (keys);
      }
    else
      usage (2);

  if (!install_matcher (matcher) && !install_matcher ("default"))
    abort ();
  (*compile)(keys, keycc);

  if ((argc - optind > 1 && !no_filenames) || with_filenames)
    out_file = 1;
  if (max_count == 0)
    exit (1);

  if (optind < argc)
    {
 status = 1;
 do
 {
   char *file = argv[optind];
   if ((included_patterns || excluded_patterns)
       && !isdir (file))
     {
       if (included_patterns &&
    ! excluded_filename (included_patterns, file, 0))
  continue;
       if (excluded_patterns &&
    excluded_filename (excluded_patterns, file, 0))
  continue;
     }
   status &= grepfile (strcmp (file, "-") == 0 ? (char *) ((void*)0) : file,
         &stats_base);
 }
 while ( ++optind < argc);
    }
  else
    status = grepfile ((char *) ((void*)0), &stats_base);


  exit (errseen ? 2 : status);
}
