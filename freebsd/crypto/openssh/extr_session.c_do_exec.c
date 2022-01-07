
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ssh {int dummy; } ;
typedef int session_type ;
struct TYPE_11__ {char* force_command; } ;
struct TYPE_10__ {char* adm_forced_command; } ;
struct TYPE_9__ {char* subsys; int ttyfd; char* tty; TYPE_1__* pw; int self; scalar_t__ is_subsystem; } ;
struct TYPE_8__ {char* pw_shell; int pw_name; } ;
typedef TYPE_2__ Session ;


 scalar_t__ IS_INTERNAL_SFTP (char const*) ;
 int PRIVSEP (int ) ;
 scalar_t__ SUBSYSTEM_EXT ;
 scalar_t__ SUBSYSTEM_INT_SFTP ;
 scalar_t__ SUBSYSTEM_INT_SFTP_ERROR ;
 char* _PATH_BSHELL ;
 int audit_run_command (char const*) ;
 TYPE_7__* auth_opts ;
 int do_exec_no_pty (struct ssh*,TYPE_2__*,char const*) ;
 int do_exec_pty (struct ssh*,TYPE_2__*,char const*) ;
 int loginmsg ;
 TYPE_3__ options ;
 char const* original_command ;
 int snprintf (char*,int,char*,...) ;
 int ssh_remote_ipaddr (struct ssh*) ;
 int ssh_remote_port (struct ssh*) ;
 int sshbuf_reset (int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int verbose (char*,char*,char*,char*,int ,int ,int ,int ) ;

int
do_exec(struct ssh *ssh, Session *s, const char *command)
{
 int ret;
 const char *forced = ((void*)0), *tty = ((void*)0);
 char session_type[1024];

 if (options.adm_forced_command) {
  original_command = command;
  command = options.adm_forced_command;
  forced = "(config)";
 } else if (auth_opts->force_command != ((void*)0)) {
  original_command = command;
  command = auth_opts->force_command;
  forced = "(key-option)";
 }
 if (forced != ((void*)0)) {
  if (IS_INTERNAL_SFTP(command)) {
   s->is_subsystem = s->is_subsystem ?
       SUBSYSTEM_INT_SFTP : SUBSYSTEM_INT_SFTP_ERROR;
  } else if (s->is_subsystem)
   s->is_subsystem = SUBSYSTEM_EXT;
  snprintf(session_type, sizeof(session_type),
      "forced-command %s '%.900s'", forced, command);
 } else if (s->is_subsystem) {
  snprintf(session_type, sizeof(session_type),
      "subsystem '%.900s'", s->subsys);
 } else if (command == ((void*)0)) {
  snprintf(session_type, sizeof(session_type), "shell");
 } else {

  snprintf(session_type, sizeof(session_type), "command");
 }

 if (s->ttyfd != -1) {
  tty = s->tty;
  if (strncmp(tty, "/dev/", 5) == 0)
   tty += 5;
 }

 verbose("Starting session: %s%s%s for %s from %.200s port %d id %d",
     session_type,
     tty == ((void*)0) ? "" : " on ",
     tty == ((void*)0) ? "" : tty,
     s->pw->pw_name,
     ssh_remote_ipaddr(ssh),
     ssh_remote_port(ssh),
     s->self);
 if (s->ttyfd != -1)
  ret = do_exec_pty(ssh, s, command);
 else
  ret = do_exec_no_pty(ssh, s, command);

 original_command = ((void*)0);






 sshbuf_reset(loginmsg);

 return ret;
}
