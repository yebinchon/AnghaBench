
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar_option {char const* name; int equivalent; scalar_t__ required; } ;
struct bsdtar {char* argument; int getopt_state; char** argv; char* getopt_word; int argc; } ;


 int lafe_warnc (int ,char*,...) ;
 char* short_options ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 struct bsdtar_option* tar_longopts ;

int
bsdtar_getopt(struct bsdtar *bsdtar)
{
 enum { state_start = 0, state_old_tar, state_next_word,
        state_short, state_long };

 const struct bsdtar_option *popt, *match = ((void*)0), *match2 = ((void*)0);
 const char *p, *long_prefix = "--";
 size_t optlength;
 int opt = '?';
 int required = 0;

 bsdtar->argument = ((void*)0);


 if (bsdtar->getopt_state == state_start) {

  ++bsdtar->argv;
  --bsdtar->argc;
  if (*bsdtar->argv == ((void*)0))
   return (-1);

  if (bsdtar->argv[0][0] == '-') {
   bsdtar->getopt_state = state_next_word;
  } else {
   bsdtar->getopt_state = state_old_tar;
   bsdtar->getopt_word = *bsdtar->argv++;
   --bsdtar->argc;
  }
 }




 if (bsdtar->getopt_state == state_old_tar) {

  opt = *bsdtar->getopt_word++;
  if (opt == '\0') {

   bsdtar->getopt_state = state_next_word;
  } else {

   p = strchr(short_options, opt);
   if (p == ((void*)0))
    return ('?');
   if (p[1] == ':') {
    bsdtar->argument = *bsdtar->argv;
    if (bsdtar->argument == ((void*)0)) {
     lafe_warnc(0,
         "Option %c requires an argument",
         opt);
     return ('?');
    }
    ++bsdtar->argv;
    --bsdtar->argc;
   }
  }
 }




 if (bsdtar->getopt_state == state_next_word) {

  if (bsdtar->argv[0] == ((void*)0))
   return (-1);

  if (bsdtar->argv[0][0] != '-')
   return (-1);

  if (strcmp(bsdtar->argv[0], "--") == 0) {
   ++bsdtar->argv;
   --bsdtar->argc;
   return (-1);
  }

  bsdtar->getopt_word = *bsdtar->argv++;
  --bsdtar->argc;
  if (bsdtar->getopt_word[1] == '-') {

   bsdtar->getopt_state = state_long;
   bsdtar->getopt_word += 2;
  } else {

   bsdtar->getopt_state = state_short;
   ++bsdtar->getopt_word;
  }
 }




 if (bsdtar->getopt_state == state_short) {

  opt = *bsdtar->getopt_word++;
  if (opt == '\0') {

   bsdtar->getopt_state = state_next_word;
   return bsdtar_getopt(bsdtar);
  }


  p = strchr(short_options, opt);
  if (p == ((void*)0))
   return ('?');
  if (p[1] == ':')
   required = 1;


  if (required) {

   if (bsdtar->getopt_word[0] == '\0') {

    bsdtar->getopt_word = *bsdtar->argv;
    if (bsdtar->getopt_word == ((void*)0)) {
     lafe_warnc(0,
         "Option -%c requires an argument",
         opt);
     return ('?');
    }
    ++bsdtar->argv;
    --bsdtar->argc;
   }
   if (opt == 'W') {
    bsdtar->getopt_state = state_long;
    long_prefix = "-W ";
   } else {
    bsdtar->getopt_state = state_next_word;
    bsdtar->argument = bsdtar->getopt_word;
   }
  }
 }


 if (bsdtar->getopt_state == state_long) {

  bsdtar->getopt_state = state_next_word;


  p = strchr(bsdtar->getopt_word, '=');
  if (p != ((void*)0)) {
   optlength = (size_t)(p - bsdtar->getopt_word);
   bsdtar->argument = (char *)(uintptr_t)(p + 1);
  } else {
   optlength = strlen(bsdtar->getopt_word);
  }


  for (popt = tar_longopts; popt->name != ((void*)0); popt++) {

   if (popt->name[0] != bsdtar->getopt_word[0])
    continue;

   if (strncmp(bsdtar->getopt_word, popt->name, optlength) == 0) {
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
       long_prefix, bsdtar->getopt_word);
   return ('?');
  }
  if (match2 != ((void*)0)) {
   lafe_warnc(0,
       "Ambiguous option %s%s (matches --%s and --%s)",
       long_prefix, bsdtar->getopt_word, match->name, match2->name);
   return ('?');
  }


  if (match->required) {

   if (bsdtar->argument == ((void*)0)) {
    bsdtar->argument = *bsdtar->argv;
    if (bsdtar->argument == ((void*)0)) {
     lafe_warnc(0,
         "Option %s%s requires an argument",
         long_prefix, match->name);
     return ('?');
    }
    ++bsdtar->argv;
    --bsdtar->argc;
   }
  } else {

   if (bsdtar->argument != ((void*)0)) {
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
