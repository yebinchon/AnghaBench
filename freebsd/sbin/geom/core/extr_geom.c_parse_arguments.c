
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_option {int go_type; char* go_val; int go_char; int * go_name; } ;
struct g_command {int gc_flags; struct g_option* gc_options; } ;
typedef int opts ;
typedef int argname ;


 int G_FLAG_VERBOSE ;
 int G_OPT_DONE (struct g_option*) ;
 scalar_t__ G_OPT_ISDONE (struct g_option*) ;
 int G_OPT_ISMULTI (struct g_option*) ;
 scalar_t__ G_OPT_TYPE (struct g_option*) ;
 scalar_t__ G_TYPE_BOOL ;
 int G_TYPE_MASK ;
 int G_TYPE_MULTI ;
 char* G_VAL_OPTIONAL ;
 int assert (int) ;
 struct g_option* find_option (struct g_command*,int) ;
 int gctl_ro_param (struct gctl_req*,char*,int,...) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int set_option (struct gctl_req*,struct g_option*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int strlcat (char*,char*,int) ;
 int strlcatf (char*,int,char*,int ) ;
 int usage () ;
 int verbose ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
parse_arguments(struct g_command *cmd, struct gctl_req *req, int *argc,
    char ***argv)
{
 struct g_option *opt;
 char opts[64];
 unsigned i;
 int ch;

 *opts = '\0';
 if ((cmd->gc_flags & G_FLAG_VERBOSE) != 0)
  strlcat(opts, "v", sizeof(opts));
 for (i = 0; ; i++) {
  opt = &cmd->gc_options[i];
  if (opt->go_name == ((void*)0))
   break;
  assert(G_OPT_TYPE(opt) != 0);
  assert((opt->go_type & ~(G_TYPE_MASK | G_TYPE_MULTI)) == 0);

  assert(G_OPT_TYPE(opt) != G_TYPE_BOOL ||
      (opt->go_type & G_TYPE_MULTI) == 0);
  strlcatf(opts, sizeof(opts), "%c", opt->go_char);
  if (G_OPT_TYPE(opt) != G_TYPE_BOOL)
   strlcat(opts, ":", sizeof(opts));
 }




 while ((ch = getopt(*argc, *argv, opts)) != -1) {

  switch (ch) {
  case 'v':
   verbose = 1;
   continue;
  }

  opt = find_option(cmd, ch);
  if (opt == ((void*)0))
   usage();
  if (!G_OPT_ISMULTI(opt) && G_OPT_ISDONE(opt)) {
   warnx("Option '%c' specified twice.", opt->go_char);
   usage();
  }
  G_OPT_DONE(opt);

  if (G_OPT_TYPE(opt) == G_TYPE_BOOL)
   set_option(req, opt, "1");
  else
   set_option(req, opt, optarg);
 }
 *argc -= optind;
 *argv += optind;




 for (i = 0; ; i++) {
  opt = &cmd->gc_options[i];
  if (opt->go_name == ((void*)0))
   break;
  if (G_OPT_ISDONE(opt))
   continue;

  if (G_OPT_TYPE(opt) == G_TYPE_BOOL) {
   assert(opt->go_val == ((void*)0));
   set_option(req, opt, "0");
  } else {
   if (opt->go_val == ((void*)0)) {
    warnx("Option '%c' not specified.",
        opt->go_char);
    usage();
   } else if (opt->go_val == G_VAL_OPTIONAL) {

   } else {
    set_option(req, opt, opt->go_val);
   }
  }
 }




 gctl_ro_param(req, "nargs", sizeof(int), argc);
 for (i = 0; i < (unsigned)*argc; i++) {
  char argname[16];

  snprintf(argname, sizeof(argname), "arg%u", i);
  gctl_ro_param(req, argname, -1, (*argv)[i]);
 }
}
