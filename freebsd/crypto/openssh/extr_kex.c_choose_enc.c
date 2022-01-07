
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshenc {char* name; int * cipher; int block_size; int key_len; int * key; int iv_len; int * iv; scalar_t__ enabled; } ;


 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_NO_CIPHER_ALG_MATCH ;
 int cipher_blocksize (int *) ;
 int * cipher_by_name (char*) ;
 int cipher_ivlen (int *) ;
 int cipher_keylen (int *) ;
 int free (char*) ;
 char* match_list (char*,char*,int *) ;

__attribute__((used)) static int
choose_enc(struct sshenc *enc, char *client, char *server)
{
 char *name = match_list(client, server, ((void*)0));

 if (name == ((void*)0))
  return SSH_ERR_NO_CIPHER_ALG_MATCH;
 if ((enc->cipher = cipher_by_name(name)) == ((void*)0)) {
  free(name);
  return SSH_ERR_INTERNAL_ERROR;
 }
 enc->name = name;
 enc->enabled = 0;
 enc->iv = ((void*)0);
 enc->iv_len = cipher_ivlen(enc->cipher);
 enc->key = ((void*)0);
 enc->key_len = cipher_keylen(enc->cipher);
 enc->block_size = cipher_blocksize(enc->cipher);
 return 0;
}
