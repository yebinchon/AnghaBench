
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int SSHKEY_SERIALIZE_DEFAULT ;
 int to_blob_buf (struct sshkey const*,struct sshbuf*,int ,int ) ;

int
sshkey_putb(const struct sshkey *key, struct sshbuf *b)
{
 return to_blob_buf(key, b, 0, SSHKEY_SERIALIZE_DEFAULT);
}
