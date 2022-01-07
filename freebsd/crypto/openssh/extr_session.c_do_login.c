
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct passwd {int pw_uid; int pw_name; } ;
typedef int socklen_t ;
typedef int pid_t ;
typedef int from ;
struct TYPE_8__ {scalar_t__ use_pam; int use_dns; } ;
struct TYPE_7__ {TYPE_1__* authctxt; int tty; struct passwd* pw; } ;
struct TYPE_6__ {scalar_t__ force_pwchange; } ;
typedef TYPE_2__ Session ;


 scalar_t__ check_quietlogin (TYPE_2__*,char const*) ;
 int cleanup_exit (int) ;
 int debug (char*,int ) ;
 int display_loginmsg () ;
 int do_motd () ;
 int do_pam_chauthtok () ;
 int errno ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;
 int getpid () ;
 int memset (struct sockaddr_storage*,int ,int) ;
 TYPE_3__ options ;
 scalar_t__ packet_connection_is_on_socket () ;
 int packet_get_connection_in () ;
 int record_login (int ,int ,int ,int ,int ,struct sockaddr*,int) ;
 int session_get_remote_name_or_ip (struct ssh*,int ,int ) ;
 int strerror (int ) ;
 int use_privsep ;
 int utmp_len ;

void
do_login(struct ssh *ssh, Session *s, const char *command)
{
 socklen_t fromlen;
 struct sockaddr_storage from;
 struct passwd * pw = s->pw;
 pid_t pid = getpid();





 memset(&from, 0, sizeof(from));
 fromlen = sizeof(from);
 if (packet_connection_is_on_socket()) {
  if (getpeername(packet_get_connection_in(),
      (struct sockaddr *)&from, &fromlen) < 0) {
   debug("getpeername: %.100s", strerror(errno));
   cleanup_exit(255);
  }
 }


 if (!use_privsep)
  record_login(pid, s->tty, pw->pw_name, pw->pw_uid,
      session_get_remote_name_or_ip(ssh, utmp_len,
      options.use_dns),
      (struct sockaddr *)&from, fromlen);
 if (check_quietlogin(s, command))
  return;

 display_loginmsg();

 do_motd();
}
