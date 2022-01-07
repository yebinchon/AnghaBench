
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;
struct ssh {int dummy; } ;


 struct sshbuf* ssh_packet_get_output (struct ssh*) ;
 size_t sshbuf_len (struct sshbuf*) ;
 int const* sshbuf_ptr (struct sshbuf*) ;

const u_char *
ssh_output_ptr(struct ssh *ssh, size_t *len)
{
 struct sshbuf *output = ssh_packet_get_output(ssh);

 *len = sshbuf_len(output);
 return sshbuf_ptr(output);
}
