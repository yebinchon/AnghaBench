
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int type; int * cert; } ;


 int SSH_ERR_KEY_TYPE_UNKNOWN ;
 int cert_free (int *) ;
 int sshkey_type_is_cert (int ) ;
 int sshkey_type_plain (int ) ;

int
sshkey_drop_cert(struct sshkey *k)
{
 if (!sshkey_type_is_cert(k->type))
  return SSH_ERR_KEY_TYPE_UNKNOWN;
 cert_free(k->cert);
 k->cert = ((void*)0);
 k->type = sshkey_type_plain(k->type);
 return 0;
}
