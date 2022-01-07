
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* name; scalar_t__ has_arg; scalar_t__* flag; scalar_t__ val; } ;


 int BADARG ;
 int BADCH ;


 int FLAG_LONGONLY ;
 scalar_t__ PRINT_ERROR ;

 int ambig ;
 int dash_prefix ;
 int illoptstring ;
 scalar_t__ no_argument ;
 int noarg ;
 char* optarg ;
 int optind ;
 scalar_t__ optional_argument ;
 scalar_t__ optopt ;
 char* place ;
 int recargstring ;
 scalar_t__ required_argument ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 int warnx (int ,char*,...) ;

__attribute__((used)) static int
parse_long_options(char * const *nargv, const char *options,
 const struct option *long_options, int *idx, int short_too, int flags)
{
 char *current_argv, *has_equal;



 size_t current_argv_len;
 int i, match, exact_match, second_partial_match;

 current_argv = place;
 match = -1;
 exact_match = 0;
 second_partial_match = 0;

 optind++;

 if ((has_equal = strchr(current_argv, '=')) != ((void*)0)) {

  current_argv_len = has_equal - current_argv;
  has_equal++;
 } else
  current_argv_len = strlen(current_argv);

 for (i = 0; long_options[i].name; i++) {

  if (strncmp(current_argv, long_options[i].name,
      current_argv_len))
   continue;

  if (strlen(long_options[i].name) == current_argv_len) {

   match = i;
   exact_match = 1;
   break;
  }




  if (short_too && current_argv_len == 1)
   continue;

  if (match == -1)
   match = i;
  else if ((flags & FLAG_LONGONLY) ||
    long_options[i].has_arg !=
        long_options[match].has_arg ||
    long_options[i].flag != long_options[match].flag ||
    long_options[i].val != long_options[match].val)
   second_partial_match = 1;
 }
 if (!exact_match && second_partial_match) {

  if (PRINT_ERROR)
   warnx(ambig,



        (int)current_argv_len,
        current_argv);
  optopt = 0;
  return (BADCH);
 }
 if (match != -1) {
  if (long_options[match].has_arg == no_argument
      && has_equal) {
   if (PRINT_ERROR)
    warnx(noarg,



         (int)current_argv_len,
         current_argv);



   if (long_options[match].flag == ((void*)0))
    optopt = long_options[match].val;
   else
    optopt = 0;



   return (BADARG);

  }
  if (long_options[match].has_arg == required_argument ||
      long_options[match].has_arg == optional_argument) {
   if (has_equal)
    optarg = has_equal;
   else if (long_options[match].has_arg ==
       required_argument) {



    optarg = nargv[optind++];
   }
  }
  if ((long_options[match].has_arg == required_argument)
      && (optarg == ((void*)0))) {




   if (PRINT_ERROR)
    warnx(recargstring,



        current_argv);



   if (long_options[match].flag == ((void*)0))
    optopt = long_options[match].val;
   else
    optopt = 0;
   --optind;
   return (BADARG);
  }
 } else {
  if (short_too) {
   --optind;
   return (-1);
  }
  if (PRINT_ERROR)
   warnx(illoptstring,



         current_argv);
  optopt = 0;
  return (BADCH);
 }
 if (idx)
  *idx = match;
 if (long_options[match].flag) {
  *long_options[match].flag = long_options[match].val;
  return (0);
 } else
  return (long_options[match].val);
}
