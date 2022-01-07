
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sshkey_cert {size_t nprincipals; int ** principals; int * signature_key; int valid_before; int valid_after; int * key_id; int type; int serial; int extensions; int critical; int certblob; } ;
struct sshkey {struct sshkey_cert* cert; } ;


 size_t SSHKEY_CERT_MAX_PRINCIPALS ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int ** calloc (size_t,int) ;
 int cert_free (struct sshkey_cert*) ;
 struct sshkey_cert* cert_new () ;
 int sshbuf_putb (int ,int ) ;
 int sshkey_from_private (int *,int **) ;
 void* strdup (int *) ;

int
sshkey_cert_copy(const struct sshkey *from_key, struct sshkey *to_key)
{
 u_int i;
 const struct sshkey_cert *from;
 struct sshkey_cert *to;
 int ret = SSH_ERR_INTERNAL_ERROR;

 if (to_key->cert != ((void*)0)) {
  cert_free(to_key->cert);
  to_key->cert = ((void*)0);
 }

 if ((from = from_key->cert) == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;

 if ((to = to_key->cert = cert_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;

 if ((ret = sshbuf_putb(to->certblob, from->certblob)) != 0 ||
     (ret = sshbuf_putb(to->critical, from->critical)) != 0 ||
     (ret = sshbuf_putb(to->extensions, from->extensions)) != 0)
  return ret;

 to->serial = from->serial;
 to->type = from->type;
 if (from->key_id == ((void*)0))
  to->key_id = ((void*)0);
 else if ((to->key_id = strdup(from->key_id)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 to->valid_after = from->valid_after;
 to->valid_before = from->valid_before;
 if (from->signature_key == ((void*)0))
  to->signature_key = ((void*)0);
 else if ((ret = sshkey_from_private(from->signature_key,
     &to->signature_key)) != 0)
  return ret;

 if (from->nprincipals > SSHKEY_CERT_MAX_PRINCIPALS)
  return SSH_ERR_INVALID_ARGUMENT;
 if (from->nprincipals > 0) {
  if ((to->principals = calloc(from->nprincipals,
      sizeof(*to->principals))) == ((void*)0))
   return SSH_ERR_ALLOC_FAIL;
  for (i = 0; i < from->nprincipals; i++) {
   to->principals[i] = strdup(from->principals[i]);
   if (to->principals[i] == ((void*)0)) {
    to->nprincipals = i;
    return SSH_ERR_ALLOC_FAIL;
   }
  }
 }
 to->nprincipals = from->nprincipals;
 return 0;
}
