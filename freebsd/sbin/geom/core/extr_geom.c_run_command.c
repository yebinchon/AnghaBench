
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {char* error; } ;
struct g_command {int gc_flags; int (* gc_func ) (struct gctl_req*,unsigned int) ;int gc_name; } ;
typedef int buf ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GEOM_CLASS_CMDS ;
 int GEOM_STD_CMDS ;
 int G_FLAG_LOADKLD ;
 int bzero (char*,int) ;
 int exit (int ) ;
 struct g_command* find_command (char*,int ) ;
 char* gclass_name ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,char*) ;
 int gctl_rw_param (struct gctl_req*,char*,int,char*) ;
 int load_module () ;
 int parse_arguments (struct g_command*,struct gctl_req*,int*,char***) ;
 int printf (char*,...) ;
 unsigned int set_flags (struct g_command*) ;
 int std_available (int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;
 int stub1 (struct gctl_req*,unsigned int) ;
 int usage () ;
 scalar_t__ verbose ;
 char* version ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
run_command(int argc, char *argv[])
{
 struct g_command *cmd;
 struct gctl_req *req;
 const char *errstr;
 char buf[4096];


 cmd = find_command(argv[0], GEOM_CLASS_CMDS);
 if (cmd == ((void*)0)) {

  cmd = find_command(argv[0], GEOM_STD_CMDS);
  if (cmd == ((void*)0)) {
   warnx("Unknown command: %s.", argv[0]);
   usage();
  }
  if (!std_available(cmd->gc_name)) {
   warnx("Command '%s' not available; "
       "try 'load' first.", argv[0]);
   exit(EXIT_FAILURE);
  }
 }
 if ((cmd->gc_flags & G_FLAG_LOADKLD) != 0)
  load_module();

 req = gctl_get_handle();
 gctl_ro_param(req, "class", -1, gclass_name);
 gctl_ro_param(req, "verb", -1, argv[0]);
 if (version != ((void*)0))
  gctl_ro_param(req, "version", sizeof(*version), version);
 parse_arguments(cmd, req, &argc, &argv);

 bzero(buf, sizeof(buf));
 if (cmd->gc_func != ((void*)0)) {
  unsigned flags;

  flags = set_flags(cmd);
  cmd->gc_func(req, flags);
  errstr = req->error;
 } else {
  gctl_rw_param(req, "output", sizeof(buf), buf);
  errstr = gctl_issue(req);
 }
 if (errstr != ((void*)0) && errstr[0] != '\0') {
  warnx("%s", errstr);
  if (strncmp(errstr, "warning: ", strlen("warning: ")) != 0) {
   gctl_free(req);
   exit(EXIT_FAILURE);
  }
 }
 if (buf[0] != '\0')
  printf("%s", buf);
 gctl_free(req);
 if (verbose)
  printf("Done.\n");
 exit(EXIT_SUCCESS);
}
