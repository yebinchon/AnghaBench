
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;
typedef int BIGNUM ;


 int ASSERT_INT_NE (int ,int ) ;
 int BN_hex2bn (int **,char const*) ;
 struct sshbuf* load_text_file (char const*) ;
 int sshbuf_free (struct sshbuf*) ;
 scalar_t__ sshbuf_ptr (struct sshbuf*) ;

BIGNUM *
load_bignum(const char *name)
{
 BIGNUM *ret = ((void*)0);
 struct sshbuf *buf;

 buf = load_text_file(name);
 ASSERT_INT_NE(BN_hex2bn(&ret, (const char *)sshbuf_ptr(buf)), 0);
 sshbuf_free(buf);
 return ret;
}
