
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
typedef enum sshkey_serialize_rep { ____Placeholder_sshkey_serialize_rep } sshkey_serialize_rep ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int * malloc (size_t) ;
 int memcpy (int *,int ,size_t) ;
 int sshbuf_free (struct sshbuf*) ;
 size_t sshbuf_len (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_ptr (struct sshbuf*) ;
 int to_blob_buf (struct sshkey const*,struct sshbuf*,int,int) ;

__attribute__((used)) static int
to_blob(const struct sshkey *key, u_char **blobp, size_t *lenp, int force_plain,
    enum sshkey_serialize_rep opts)
{
 int ret = SSH_ERR_INTERNAL_ERROR;
 size_t len;
 struct sshbuf *b = ((void*)0);

 if (lenp != ((void*)0))
  *lenp = 0;
 if (blobp != ((void*)0))
  *blobp = ((void*)0);
 if ((b = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((ret = to_blob_buf(key, b, force_plain, opts)) != 0)
  goto out;
 len = sshbuf_len(b);
 if (lenp != ((void*)0))
  *lenp = len;
 if (blobp != ((void*)0)) {
  if ((*blobp = malloc(len)) == ((void*)0)) {
   ret = SSH_ERR_ALLOC_FAIL;
   goto out;
  }
  memcpy(*blobp, sshbuf_ptr(b), len);
 }
 ret = 0;
 out:
 sshbuf_free(b);
 return ret;
}
