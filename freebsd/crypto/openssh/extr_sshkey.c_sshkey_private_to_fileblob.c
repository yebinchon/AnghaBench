
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int type; } ;
struct sshbuf {int dummy; } ;







 int SSH_ERR_KEY_TYPE_UNKNOWN ;
 int sshkey_private_pem_to_blob (struct sshkey*,struct sshbuf*,char const*,char const*) ;
 int sshkey_private_to_blob2 (struct sshkey*,struct sshbuf*,char const*,char const*,char const*,int) ;

int
sshkey_private_to_fileblob(struct sshkey *key, struct sshbuf *blob,
    const char *passphrase, const char *comment,
    int force_new_format, const char *new_format_cipher, int new_format_rounds)
{
 switch (key->type) {
 case 130:



  return sshkey_private_to_blob2(key, blob, passphrase,
      comment, new_format_cipher, new_format_rounds);
 default:
  return SSH_ERR_KEY_TYPE_UNKNOWN;
 }
}
