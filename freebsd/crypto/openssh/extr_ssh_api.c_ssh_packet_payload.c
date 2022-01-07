
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ssh {int dummy; } ;


 int const* sshpkt_ptr (struct ssh*,size_t*) ;

const u_char *
ssh_packet_payload(struct ssh *ssh, size_t *lenp)
{
 return sshpkt_ptr(ssh, lenp);
}
