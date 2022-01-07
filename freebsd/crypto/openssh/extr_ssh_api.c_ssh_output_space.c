
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int ssh_packet_get_output (struct ssh*) ;
 scalar_t__ sshbuf_check_reserve (int ,size_t) ;

int
ssh_output_space(struct ssh *ssh, size_t len)
{
 return (0 == sshbuf_check_reserve(ssh_packet_get_output(ssh), len));
}
