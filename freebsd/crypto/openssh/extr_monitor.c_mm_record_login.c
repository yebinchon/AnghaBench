
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct passwd {int pw_uid; int pw_name; } ;
typedef int socklen_t ;
typedef int from ;
struct TYPE_5__ {int use_dns; } ;
struct TYPE_4__ {int tty; int pid; } ;
typedef TYPE_1__ Session ;


 struct ssh* active_state ;
 int cleanup_exit (int) ;
 int debug (char*,int ) ;
 int errno ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 TYPE_2__ options ;
 scalar_t__ packet_connection_is_on_socket () ;
 int packet_get_connection_in () ;
 int record_login (int ,int ,int ,int ,int ,struct sockaddr*,int) ;
 int session_get_remote_name_or_ip (struct ssh*,int ,int ) ;
 int strerror (int ) ;
 int utmp_len ;

__attribute__((used)) static void
mm_record_login(Session *s, struct passwd *pw)
{
 struct ssh *ssh = active_state;
 socklen_t fromlen;
 struct sockaddr_storage from;





 memset(&from, 0, sizeof(from));
 fromlen = sizeof(from);
 if (packet_connection_is_on_socket()) {
  if (getpeername(packet_get_connection_in(),
      (struct sockaddr *)&from, &fromlen) < 0) {
   debug("getpeername: %.100s", strerror(errno));
   cleanup_exit(255);
  }
 }

 record_login(s->pid, s->tty, pw->pw_name, pw->pw_uid,
     session_get_remote_name_or_ip(ssh, utmp_len, options.use_dns),
     (struct sockaddr *)&from, fromlen);
}
