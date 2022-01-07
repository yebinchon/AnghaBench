
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdcat_option {char const* name; int equivalent; scalar_t__ required; } ;
struct bsdcat {char* argument; int getopt_state; char** argv; char* getopt_word; int argc; } ;


 int lafe_warnc (int ,char*,...) ;
 char* short_options ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 struct bsdcat_option* tar_longopts ;

int
bsdcat_getopt(struct bsdcat *bsdcat)
{
 enum { state_start = 0, state_old_tar, state_next_word,
        state_short, state_long };

 const struct bsdcat_option *popt, *match = ((void*)0), *match2 = ((void*)0);
 const char *p, *long_prefix = "--";
 size_t optlength;
 int opt = '?';
 int required = 0;

 bsdcat->argument = ((void*)0);


 if (bsdcat->getopt_state == state_start) {

  ++bsdcat->argv;
  --bsdcat->argc;
  if (*bsdcat->argv == ((void*)0))
   return (-1);

  bsdcat->getopt_state = state_next_word;
 }




 if (bsdcat->getopt_state == state_next_word) {

  if (bsdcat->argv[0] == ((void*)0))
   return (-1);

  if (bsdcat->argv[0][0] != '-')
   return (-1);

  if (strcmp(bsdcat->argv[0], "--") == 0) {
   ++bsdcat->argv;
   --bsdcat->argc;
   return (-1);
  }

  bsdcat->getopt_word = *bsdcat->argv++;
  --bsdcat->argc;
  if (bsdcat->getopt_word[1] == '-') {

   bsdcat->getopt_state = state_long;
   bsdcat->getopt_word += 2;
  } else {

   bsdcat->getopt_state = state_short;
   ++bsdcat->getopt_word;
  }
 }




 if (bsdcat->getopt_state == state_short) {

  opt = *bsdcat->getopt_word++;
  if (opt == '\0') {

   bsdcat->getopt_state = state_next_word;
   return bsdcat_getopt(bsdcat);
  }


  p = strchr(short_options, opt);
  if (p == ((void*)0))
   return ('?');
  if (p[1] == ':')
   required = 1;


  if (required) {

   if (bsdcat->getopt_word[0] == '\0') {

    bsdcat->getopt_word = *bsdcat->argv;
    if (bsdcat->getopt_word == ((void*)0)) {
     lafe_warnc(0,
         "Option -%c requires an argument",
         opt);
     return ('?');
    }
    ++bsdcat->argv;
    --bsdcat->argc;
   }
   if (opt == 'W') {
    bsdcat->getopt_state = state_long;
    long_prefix = "-W ";
   } else {
    bsdcat->getopt_state = state_next_word;
    bsdcat->argument = bsdcat->getopt_word;
   }
  }
 }


 if (bsdcat->getopt_state == state_long) {

  bsdcat->getopt_state = state_next_word;


  p = strchr(bsdcat->getopt_word, '=');
  if (p != ((void*)0)) {
   optlength = (size_t)(p - bsdcat->getopt_word);
   bsdcat->argument = (char *)(uintptr_t)(p + 1);
  } else {
   optlength = strlen(bsdcat->getopt_word);
  }


  for (popt = tar_longopts; popt->name != ((void*)0); popt++) {

   if (popt->name[0] != bsdcat->getopt_word[0])
    continue;

   if (strncmp(bsdcat->getopt_word, popt->name, optlength) == 0) {
    match2 = match;
    match = popt;

    if (strlen(popt->name) == optlength) {
     match2 = ((void*)0);
     break;
    }
   }
  }


  if (match == ((void*)0)) {
   lafe_warnc(0,
       "Option %s%s is not supported",
       long_prefix, bsdcat->getopt_word);
   return ('?');
  }
  if (match2 != ((void*)0)) {
   lafe_warnc(0,
       "Ambiguous option %s%s (matches --%s and --%s)",
       long_prefix, bsdcat->getopt_word, match->name, match2->name);
   return ('?');
  }


  if (match->required) {

   if (bsdcat->argument == ((void*)0)) {
    bsdcat->argument = *bsdcat->argv;
    if (bsdcat->argument == ((void*)0)) {
     lafe_warnc(0,
         "Option %s%s requires an argument",
         long_prefix, match->name);
     return ('?');
    }
    ++bsdcat->argv;
    --bsdcat->argc;
   }
  } else {

   if (bsdcat->argument != ((void*)0)) {
    lafe_warnc(0,
        "Option %s%s does not allow an argument",
        long_prefix, match->name);
    return ('?');
   }
  }
  return (match->equivalent);
 }

 return (opt);
}
