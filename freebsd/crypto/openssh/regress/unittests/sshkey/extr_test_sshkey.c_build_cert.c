
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int ASSERT_INT_EQ (int ,int ) ;
 int ASSERT_PTR_NE (struct sshbuf*,int *) ;
 int SSH2_CERT_TYPE_USER ;
 int free (int *) ;
 int put_opt (struct sshbuf*,char*,char*) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_len (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_put_cstring (struct sshbuf*,char const*) ;
 int sshbuf_put_string (struct sshbuf*,int *,size_t) ;
 int sshbuf_put_stringb (struct sshbuf*,struct sshbuf*) ;
 int sshbuf_put_u32 (struct sshbuf*,int ) ;
 int sshbuf_put_u64 (struct sshbuf*,int) ;
 int sshbuf_putb (struct sshbuf*,struct sshbuf*) ;
 int sshbuf_skip_string (struct sshbuf*) ;
 int sshkey_putb (struct sshkey const*,struct sshbuf*) ;
 int sshkey_putb_plain (struct sshkey const*,struct sshbuf*) ;
 int sshkey_sign (struct sshkey const*,int **,size_t*,int ,int ,char const*,int ) ;

__attribute__((used)) static void
build_cert(struct sshbuf *b, const struct sshkey *k, const char *type,
    const struct sshkey *sign_key, const struct sshkey *ca_key,
    const char *sig_alg)
{
 struct sshbuf *ca_buf, *pk, *principals, *critopts, *exts;
 u_char *sigblob;
 size_t siglen;

 ca_buf = sshbuf_new();
 ASSERT_PTR_NE(ca_buf, ((void*)0));
 ASSERT_INT_EQ(sshkey_putb(ca_key, ca_buf), 0);





 pk = sshbuf_new();
 ASSERT_PTR_NE(pk, ((void*)0));
 ASSERT_INT_EQ(sshkey_putb_plain(k, pk), 0);
 ASSERT_INT_EQ(sshbuf_skip_string(pk), 0);

 principals = sshbuf_new();
 ASSERT_PTR_NE(principals, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_cstring(principals, "gsamsa"), 0);
 ASSERT_INT_EQ(sshbuf_put_cstring(principals, "gregor"), 0);

 critopts = sshbuf_new();
 ASSERT_PTR_NE(critopts, ((void*)0));
 put_opt(critopts, "force-command", "/usr/local/bin/nethack");
 put_opt(critopts, "source-address", "192.168.0.0/24,127.0.0.1,::1");

 exts = sshbuf_new();
 ASSERT_PTR_NE(exts, ((void*)0));
 put_opt(critopts, "permit-X11-forwarding", ((void*)0));

 ASSERT_INT_EQ(sshbuf_put_cstring(b, type), 0);
 ASSERT_INT_EQ(sshbuf_put_cstring(b, "noncenoncenonce!"), 0);
 ASSERT_INT_EQ(sshbuf_putb(b, pk), 0);
 ASSERT_INT_EQ(sshbuf_put_u64(b, 1234), 0);
 ASSERT_INT_EQ(sshbuf_put_u32(b, SSH2_CERT_TYPE_USER), 0);
 ASSERT_INT_EQ(sshbuf_put_cstring(b, "gregor"), 0);
 ASSERT_INT_EQ(sshbuf_put_stringb(b, principals), 0);
 ASSERT_INT_EQ(sshbuf_put_u64(b, 0), 0);
 ASSERT_INT_EQ(sshbuf_put_u64(b, 0xffffffffffffffffULL), 0);
 ASSERT_INT_EQ(sshbuf_put_stringb(b, critopts), 0);
 ASSERT_INT_EQ(sshbuf_put_stringb(b, exts), 0);
 ASSERT_INT_EQ(sshbuf_put_string(b, ((void*)0), 0), 0);
 ASSERT_INT_EQ(sshbuf_put_stringb(b, ca_buf), 0);
 ASSERT_INT_EQ(sshkey_sign(sign_key, &sigblob, &siglen,
     sshbuf_ptr(b), sshbuf_len(b), sig_alg, 0), 0);
 ASSERT_INT_EQ(sshbuf_put_string(b, sigblob, siglen), 0);

 free(sigblob);
 sshbuf_free(ca_buf);
 sshbuf_free(exts);
 sshbuf_free(critopts);
 sshbuf_free(principals);
 sshbuf_free(pk);
}
