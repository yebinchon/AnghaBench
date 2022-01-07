
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u_int ;
struct stat {int dummy; } ;
struct ssh {int dummy; } ;
struct TYPE_8__ {size_t num_subsystems; char** subsystem_name; char** subsystem_command; char** subsystem_args; } ;
struct TYPE_7__ {TYPE_1__* pw; int subsys; int is_subsystem; } ;
struct TYPE_6__ {int pw_name; } ;
typedef TYPE_2__ Session ;


 int INTERNAL_SFTP_NAME ;
 int SUBSYSTEM_EXT ;
 int SUBSYSTEM_INT_SFTP ;
 int debug (char*,char*,...) ;
 int debug2 (char*,int ,int ) ;
 scalar_t__ do_exec (struct ssh*,TYPE_2__*,char*) ;
 int errno ;
 int logit (char*,int ,int ) ;
 TYPE_4__ options ;
 int packet_check_eom () ;
 int packet_get_string (size_t*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strerror (int ) ;

__attribute__((used)) static int
session_subsystem_req(struct ssh *ssh, Session *s)
{
 struct stat st;
 u_int len;
 int success = 0;
 char *prog, *cmd;
 u_int i;

 s->subsys = packet_get_string(&len);
 packet_check_eom();
 debug2("subsystem request for %.100s by user %s", s->subsys,
     s->pw->pw_name);

 for (i = 0; i < options.num_subsystems; i++) {
  if (strcmp(s->subsys, options.subsystem_name[i]) == 0) {
   prog = options.subsystem_command[i];
   cmd = options.subsystem_args[i];
   if (strcmp(INTERNAL_SFTP_NAME, prog) == 0) {
    s->is_subsystem = SUBSYSTEM_INT_SFTP;
    debug("subsystem: %s", prog);
   } else {
    if (stat(prog, &st) < 0)
     debug("subsystem: cannot stat %s: %s",
         prog, strerror(errno));
    s->is_subsystem = SUBSYSTEM_EXT;
    debug("subsystem: exec() %s", cmd);
   }
   success = do_exec(ssh, s, cmd) == 0;
   break;
  }
 }

 if (!success)
  logit("subsystem request for %.100s by user %s failed, "
      "subsystem not found", s->subsys, s->pw->pw_name);

 return success;
}
