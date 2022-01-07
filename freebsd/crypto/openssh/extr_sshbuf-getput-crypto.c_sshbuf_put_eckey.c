
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;
typedef int EC_KEY ;


 int EC_KEY_get0_group (int const*) ;
 int EC_KEY_get0_public_key (int const*) ;
 int sshbuf_put_ec (struct sshbuf*,int ,int ) ;

int
sshbuf_put_eckey(struct sshbuf *buf, const EC_KEY *v)
{
 return sshbuf_put_ec(buf, EC_KEY_get0_public_key(v),
     EC_KEY_get0_group(v));
}
