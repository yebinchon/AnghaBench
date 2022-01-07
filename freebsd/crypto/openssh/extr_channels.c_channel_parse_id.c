
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct ssh {int dummy; } ;


 scalar_t__ INT_MAX ;
 int error (char*,char const*,scalar_t__,...) ;
 char* ssh_err (int) ;
 int ssh_packet_disconnect (struct ssh*,char*,char const*) ;
 int sshpkt_get_u32 (struct ssh*,scalar_t__*) ;

__attribute__((used)) static int
channel_parse_id(struct ssh *ssh, const char *where, const char *what)
{
 u_int32_t id;
 int r;

 if ((r = sshpkt_get_u32(ssh, &id)) != 0) {
  error("%s: parse id: %s", where, ssh_err(r));
  ssh_packet_disconnect(ssh, "Invalid %s message", what);
 }
 if (id > INT_MAX) {
  error("%s: bad channel id %u: %s", where, id, ssh_err(r));
  ssh_packet_disconnect(ssh, "Invalid %s channel id", what);
 }
 return (int)id;
}
