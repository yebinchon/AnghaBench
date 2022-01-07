
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int SSHKEY_SERIALIZE_DEFAULT ;
 int sshkey_puts_opts (struct sshkey const*,struct sshbuf*,int ) ;

int
sshkey_puts(const struct sshkey *key, struct sshbuf *b)
{
 return sshkey_puts_opts(key, b, SSHKEY_SERIALIZE_DEFAULT);
}
