
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_option {char* go_name; int go_char; int * go_val; } ;
struct g_command {char* gc_name; int gc_flags; struct g_option* gc_options; int * gc_usage; } ;


 int G_FLAG_VERBOSE ;
 scalar_t__ G_OPT_TYPE (struct g_option*) ;
 scalar_t__ G_TYPE_BOOL ;
 char* comm ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int stderr ;
 char* strdup (int *) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
usage_command(struct g_command *cmd, const char *prefix)
{
 struct g_option *opt;
 unsigned i;

 if (cmd->gc_usage != ((void*)0)) {
  char *pos, *ptr, *sptr;

  sptr = ptr = strdup(cmd->gc_usage);
  while ((pos = strsep(&ptr, "\n")) != ((void*)0)) {
   if (*pos == '\0')
    continue;
   fprintf(stderr, "%s %s %s %s\n", prefix, comm,
       cmd->gc_name, pos);
  }
  free(sptr);
  return;
 }

 fprintf(stderr, "%s %s %s", prefix, comm, cmd->gc_name);
 if ((cmd->gc_flags & G_FLAG_VERBOSE) != 0)
  fprintf(stderr, " [-v]");
 for (i = 0; ; i++) {
  opt = &cmd->gc_options[i];
  if (opt->go_name == ((void*)0))
   break;
  if (opt->go_val != ((void*)0) || G_OPT_TYPE(opt) == G_TYPE_BOOL)
   fprintf(stderr, " [");
  else
   fprintf(stderr, " ");
  fprintf(stderr, "-%c", opt->go_char);
  if (G_OPT_TYPE(opt) != G_TYPE_BOOL)
   fprintf(stderr, " %s", opt->go_name);
  if (opt->go_val != ((void*)0) || G_OPT_TYPE(opt) == G_TYPE_BOOL)
   fprintf(stderr, "]");
 }
 fprintf(stderr, "\n");
}
