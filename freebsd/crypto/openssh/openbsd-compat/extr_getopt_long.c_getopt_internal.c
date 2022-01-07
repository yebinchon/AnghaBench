
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int BADARG ;
 int BADCH ;
 char* EMSG ;
 int FLAG_ALLARGS ;
 int FLAG_LONGONLY ;
 int FLAG_PERMUTE ;
 int INORDER ;
 scalar_t__ PRINT_ERROR ;
 int * getenv (char*) ;
 int illoptchar ;
 int nonopt_end ;
 int nonopt_start ;
 char* optarg ;
 int optind ;
 int optopt ;
 int optreset ;
 int parse_long_options (char* const*,char const*,struct option const*,int*,int) ;
 int permute_args (int,int,int,char* const*) ;
 char* place ;
 int recargchar ;
 char* strchr (char const*,int) ;
 int warnx (int ,int) ;

__attribute__((used)) static int
getopt_internal(int nargc, char * const *nargv, const char *options,
 const struct option *long_options, int *idx, int flags)
{
 char *oli;
 int optchar, short_too;
 static int posixly_correct = -1;

 if (options == ((void*)0))
  return (-1);





 if (optind == 0)
  optind = optreset = 1;





 if (posixly_correct == -1 || optreset)
  posixly_correct = (getenv("POSIXLY_CORRECT") != ((void*)0));
 if (*options == '-')
  flags |= FLAG_ALLARGS;
 else if (posixly_correct || *options == '+')
  flags &= ~FLAG_PERMUTE;
 if (*options == '+' || *options == '-')
  options++;

 optarg = ((void*)0);
 if (optreset)
  nonopt_start = nonopt_end = -1;
start:
 if (optreset || !*place) {
  optreset = 0;
  if (optind >= nargc) {
   place = EMSG;
   if (nonopt_end != -1) {

    permute_args(nonopt_start, nonopt_end,
        optind, nargv);
    optind -= nonopt_end - nonopt_start;
   }
   else if (nonopt_start != -1) {




    optind = nonopt_start;
   }
   nonopt_start = nonopt_end = -1;
   return (-1);
  }
  if (*(place = nargv[optind]) != '-' ||
      (place[1] == '\0' && strchr(options, '-') == ((void*)0))) {
   place = EMSG;
   if (flags & FLAG_ALLARGS) {




    optarg = nargv[optind++];
    return (INORDER);
   }
   if (!(flags & FLAG_PERMUTE)) {




    return (-1);
   }

   if (nonopt_start == -1)
    nonopt_start = optind;
   else if (nonopt_end != -1) {
    permute_args(nonopt_start, nonopt_end,
        optind, nargv);
    nonopt_start = optind -
        (nonopt_end - nonopt_start);
    nonopt_end = -1;
   }
   optind++;

   goto start;
  }
  if (nonopt_start != -1 && nonopt_end == -1)
   nonopt_end = optind;




  if (place[1] != '\0' && *++place == '-' && place[1] == '\0') {
   optind++;
   place = EMSG;




   if (nonopt_end != -1) {
    permute_args(nonopt_start, nonopt_end,
        optind, nargv);
    optind -= nonopt_end - nonopt_start;
   }
   nonopt_start = nonopt_end = -1;
   return (-1);
  }
 }







 if (long_options != ((void*)0) && place != nargv[optind] &&
     (*place == '-' || (flags & FLAG_LONGONLY))) {
  short_too = 0;
  if (*place == '-')
   place++;
  else if (*place != ':' && strchr(options, *place) != ((void*)0))
   short_too = 1;

  optchar = parse_long_options(nargv, options, long_options,
      idx, short_too);
  if (optchar != -1) {
   place = EMSG;
   return (optchar);
  }
 }

 if ((optchar = (int)*place++) == (int)':' ||
     (optchar == (int)'-' && *place != '\0') ||
     (oli = strchr(options, optchar)) == ((void*)0)) {





  if (optchar == (int)'-' && *place == '\0')
   return (-1);
  if (!*place)
   ++optind;
  if (PRINT_ERROR)
   warnx(illoptchar, optchar);
  optopt = optchar;
  return (BADCH);
 }
 if (long_options != ((void*)0) && optchar == 'W' && oli[1] == ';') {

  if (*place)
                ;
  else if (++optind >= nargc) {
   place = EMSG;
   if (PRINT_ERROR)
    warnx(recargchar, optchar);
   optopt = optchar;
   return (BADARG);
  } else
   place = nargv[optind];
  optchar = parse_long_options(nargv, options, long_options,
      idx, 0);
  place = EMSG;
  return (optchar);
 }
 if (*++oli != ':') {
  if (!*place)
   ++optind;
 } else {
  optarg = ((void*)0);
  if (*place)
   optarg = place;
  else if (oli[1] != ':') {
   if (++optind >= nargc) {
    place = EMSG;
    if (PRINT_ERROR)
     warnx(recargchar, optchar);
    optopt = optchar;
    return (BADARG);
   } else
    optarg = nargv[optind];
  }
  place = EMSG;
  ++optind;
 }

 return (optchar);
}
