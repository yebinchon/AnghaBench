
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u_int32_t ;
struct ssh {int dummy; } ;


 int SSH2_MSG_UNIMPLEMENTED ;
 int error (char*,int,char*) ;
 int sshpkt_put_u32 (struct ssh*,char*) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;

__attribute__((used)) static int
kex_protocol_error(int type, u_int32_t seq, struct ssh *ssh)
{
 int r;

 error("kex protocol error: type %d seq %u", type, seq);
 if ((r = sshpkt_start(ssh, SSH2_MSG_UNIMPLEMENTED)) != 0 ||
     (r = sshpkt_put_u32(ssh, seq)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  return r;
 return 0;
}
