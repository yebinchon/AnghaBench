
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;


 int ASSERT_INT_EQ (int ,int ) ;
 int ASSERT_INT_NE (int ,int ) ;
 int ASSERT_PTR_NE (int*,int *) ;
 int ASSERT_SIZE_T_GT (size_t,int) ;
 int free (int*) ;
 int sshkey_sign (struct sshkey*,int**,size_t*,int const*,size_t,char const*,int ) ;
 int sshkey_verify (struct sshkey*,int*,size_t,int const*,size_t,int *,int ) ;

__attribute__((used)) static void
signature_test(struct sshkey *k, struct sshkey *bad, const char *sig_alg,
    const u_char *d, size_t l)
{
 size_t len;
 u_char *sig;

 ASSERT_INT_EQ(sshkey_sign(k, &sig, &len, d, l, sig_alg, 0), 0);
 ASSERT_SIZE_T_GT(len, 8);
 ASSERT_PTR_NE(sig, ((void*)0));
 ASSERT_INT_EQ(sshkey_verify(k, sig, len, d, l, ((void*)0), 0), 0);
 ASSERT_INT_NE(sshkey_verify(bad, sig, len, d, l, ((void*)0), 0), 0);

 sig[len - 5] ^= 0x10;
 ASSERT_INT_NE(sshkey_verify(k, sig, len, d, l, ((void*)0), 0), 0);
 free(sig);
}
