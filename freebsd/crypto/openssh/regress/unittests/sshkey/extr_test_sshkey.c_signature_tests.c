
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;
typedef int lens ;


 int banana (int*,size_t) ;
 int signature_test (struct sshkey*,struct sshkey*,char const*,int*,size_t) ;
 int sshkey_type (struct sshkey*) ;
 int test_subtest_info (char*,int ,size_t) ;

__attribute__((used)) static void
signature_tests(struct sshkey *k, struct sshkey *bad, const char *sig_alg)
{
 u_char i, buf[2049];
 size_t lens[] = {
  1, 2, 7, 8, 9, 15, 16, 17, 31, 32, 33, 127, 128, 129,
  255, 256, 257, 1023, 1024, 1025, 2047, 2048, 2049
 };

 for (i = 0; i < (sizeof(lens)/sizeof(lens[0])); i++) {
  test_subtest_info("%s key, banana length %zu",
      sshkey_type(k), lens[i]);
  banana(buf, lens[i]);
  signature_test(k, bad, sig_alg, buf, lens[i]);
 }
}
