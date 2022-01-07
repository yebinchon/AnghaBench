
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ssh {int dummy; } ;


 int ssh_packet_get_input (struct ssh*) ;
 int sshbuf_put (int ,int const*,size_t) ;

int
ssh_input_append(struct ssh *ssh, const u_char *data, size_t len)
{
 return sshbuf_put(ssh_packet_get_input(ssh), data, len);
}
