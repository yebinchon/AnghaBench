
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int ssh_digest_memory (int,int ,int ,int *,size_t) ;
 int sshbuf_len (struct sshbuf const*) ;
 int sshbuf_ptr (struct sshbuf const*) ;

int
ssh_digest_buffer(int alg, const struct sshbuf *b, u_char *d, size_t dlen)
{
 return ssh_digest_memory(alg, sshbuf_ptr(b), sshbuf_len(b), d, dlen);
}
