
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* name; int equivalent; scalar_t__ required; } ;
struct cpio {char* argument; char** argv; int argc; } ;


 struct option* cpio_longopts ;
 int lafe_warnc (int ,char*,...) ;
 char* short_options ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;

int
cpio_getopt(struct cpio *cpio)
{
 enum { state_start = 0, state_next_word, state_short, state_long };
 static int state = state_start;
 static char *opt_word;

 const struct option *popt, *match = ((void*)0), *match2 = ((void*)0);
 const char *p, *long_prefix = "--";
 size_t optlength;
 int opt = '?';
 int required = 0;

 cpio->argument = ((void*)0);


 if (state == state_start) {

  ++cpio->argv;
  --cpio->argc;
  state = state_next_word;
 }




 if (state == state_next_word) {

  if (cpio->argv[0] == ((void*)0))
   return (-1);

  if (cpio->argv[0][0] != '-')
   return (-1);

  if (strcmp(cpio->argv[0], "--") == 0) {
   ++cpio->argv;
   --cpio->argc;
   return (-1);
  }

  opt_word = *cpio->argv++;
  --cpio->argc;
  if (opt_word[1] == '-') {

   state = state_long;
   opt_word += 2;
  } else {

   state = state_short;
   ++opt_word;
  }
 }




 if (state == state_short) {

  opt = *opt_word++;
  if (opt == '\0') {

   state = state_next_word;
   return cpio_getopt(cpio);
  }


  p = strchr(short_options, opt);
  if (p == ((void*)0))
   return ('?');
  if (p[1] == ':')
   required = 1;


  if (required) {

   if (opt_word[0] == '\0') {

    opt_word = *cpio->argv;
    if (opt_word == ((void*)0)) {
     lafe_warnc(0,
         "Option -%c requires an argument",
         opt);
     return ('?');
    }
    ++cpio->argv;
    --cpio->argc;
   }
   if (opt == 'W') {
    state = state_long;
    long_prefix = "-W ";
   } else {
    state = state_next_word;
    cpio->argument = opt_word;
   }
  }
 }


 if (state == state_long) {

  state = state_next_word;


  p = strchr(opt_word, '=');
  if (p != ((void*)0)) {
   optlength = (size_t)(p - opt_word);
   cpio->argument = (char *)(uintptr_t)(p + 1);
  } else {
   optlength = strlen(opt_word);
  }


  for (popt = cpio_longopts; popt->name != ((void*)0); popt++) {

   if (popt->name[0] != opt_word[0])
    continue;

   if (strncmp(opt_word, popt->name, optlength) == 0) {
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
       long_prefix, opt_word);
   return ('?');
  }
  if (match2 != ((void*)0)) {
   lafe_warnc(0,
       "Ambiguous option %s%s (matches --%s and --%s)",
       long_prefix, opt_word, match->name, match2->name);
   return ('?');
  }


  if (match->required) {

   if (cpio->argument == ((void*)0)) {
    cpio->argument = *cpio->argv;
    if (cpio->argument == ((void*)0)) {
     lafe_warnc(0,
         "Option %s%s requires an argument",
         long_prefix, match->name);
     return ('?');
    }
    ++cpio->argv;
    --cpio->argc;
   }
  } else {

   if (cpio->argument != ((void*)0)) {
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
