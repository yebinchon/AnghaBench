
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int ssh_packet_get_output (struct ssh*) ;
 int sshbuf_consume (int ,size_t) ;

int
ssh_output_consume(struct ssh *ssh, size_t len)
{
 return sshbuf_consume(ssh_packet_get_output(ssh), len);
}
