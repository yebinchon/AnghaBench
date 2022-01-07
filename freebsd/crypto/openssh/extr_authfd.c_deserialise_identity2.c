
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int free (char*) ;
 int sshbuf_get_cstring (struct sshbuf*,char**,int *) ;
 int sshbuf_get_string_direct (struct sshbuf*,int const**,size_t*) ;
 int sshkey_from_blob (int const*,size_t,struct sshkey**) ;

__attribute__((used)) static int
deserialise_identity2(struct sshbuf *ids, struct sshkey **keyp, char **commentp)
{
 int r;
 char *comment = ((void*)0);
 const u_char *blob;
 size_t blen;

 if ((r = sshbuf_get_string_direct(ids, &blob, &blen)) != 0 ||
     (r = sshbuf_get_cstring(ids, &comment, ((void*)0))) != 0)
  goto out;
 if ((r = sshkey_from_blob(blob, blen, keyp)) != 0)
  goto out;
 if (commentp != ((void*)0)) {
  *commentp = comment;
  comment = ((void*)0);
 }
 r = 0;
 out:
 free(comment);
 return r;
}
