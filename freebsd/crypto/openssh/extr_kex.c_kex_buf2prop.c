
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef size_t u_char ;
struct sshbuf {int dummy; } ;


 int KEX_COOKIE_LEN ;
 size_t PROPOSAL_MAX ;
 int SSH_ERR_ALLOC_FAIL ;
 char** calloc (size_t,int) ;
 int debug2 (char*,size_t,...) ;
 int kex_prop_free (char**) ;
 int * proposal_names ;
 int sshbuf_consume (struct sshbuf*,int ) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_fromb (struct sshbuf*) ;
 int sshbuf_get_cstring (struct sshbuf*,char**,int *) ;
 int sshbuf_get_u32 (struct sshbuf*,size_t*) ;
 int sshbuf_get_u8 (struct sshbuf*,size_t*) ;

int
kex_buf2prop(struct sshbuf *raw, int *first_kex_follows, char ***propp)
{
 struct sshbuf *b = ((void*)0);
 u_char v;
 u_int i;
 char **proposal = ((void*)0);
 int r;

 *propp = ((void*)0);
 if ((proposal = calloc(PROPOSAL_MAX, sizeof(char *))) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((b = sshbuf_fromb(raw)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = sshbuf_consume(b, KEX_COOKIE_LEN)) != 0)
  goto out;

 for (i = 0; i < PROPOSAL_MAX; i++) {
  if ((r = sshbuf_get_cstring(b, &(proposal[i]), ((void*)0))) != 0)
   goto out;
  debug2("%s: %s", proposal_names[i], proposal[i]);
 }

 if ((r = sshbuf_get_u8(b, &v)) != 0 ||
     (r = sshbuf_get_u32(b, &i)) != 0)
  goto out;
 if (first_kex_follows != ((void*)0))
  *first_kex_follows = v;
 debug2("first_kex_follows %d ", v);
 debug2("reserved %u ", i);
 r = 0;
 *propp = proposal;
 out:
 if (r != 0 && proposal != ((void*)0))
  kex_prop_free(proposal);
 sshbuf_free(b);
 return r;
}
