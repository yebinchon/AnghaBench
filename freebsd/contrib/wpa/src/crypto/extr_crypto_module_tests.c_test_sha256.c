
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hmac_test {size_t data_len; int hash; int key_len; int key; int * data; } ;
typedef int hash ;


 unsigned int ARRAY_SIZE (struct hmac_test*) ;
 int MSG_INFO ;
 scalar_t__ hmac_sha256 (int ,int ,int *,size_t,int *) ;
 int hmac_sha256_kdf (int *,int,char*,int *,int,int *,int) ;
 scalar_t__ hmac_sha256_vector (int ,int ,int,int const**,size_t*,int *) ;
 struct hmac_test* hmac_tests ;
 scalar_t__ memcmp (int *,int ,int) ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 scalar_t__ os_memcmp (int *,int ,int) ;
 int sha256_prf (int *,int,char*,int *,int,int *,int) ;
 int sha256_vector (int,int const**,size_t*,int *) ;
 int strlen (int *) ;
 struct hmac_test* tests ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int test_sha256(void)
{
 unsigned int i;
 u8 hash[32];
 const u8 *addr[2];
 size_t len[2];
 int errors = 0;
 u8 *key;

 for (i = 0; i < ARRAY_SIZE(tests); i++) {
  wpa_printf(MSG_INFO, "SHA256 test case %d:", i + 1);

  addr[0] = (u8 *) tests[i].data;
  len[0] = strlen(tests[i].data);
  sha256_vector(1, addr, len, hash);
  if (memcmp(hash, tests[i].hash, 32) != 0) {
   wpa_printf(MSG_INFO, " FAIL");
   errors++;
  } else
   wpa_printf(MSG_INFO, " OK");

  if (len[0]) {
   addr[0] = (u8 *) tests[i].data;
   len[0] = 1;
   addr[1] = (u8 *) tests[i].data + 1;
   len[1] = strlen(tests[i].data) - 1;
   sha256_vector(2, addr, len, hash);
   if (memcmp(hash, tests[i].hash, 32) != 0) {
    wpa_printf(MSG_INFO, " FAIL");
    errors++;
   } else
    wpa_printf(MSG_INFO, " OK");
  }
 }

 for (i = 0; i < ARRAY_SIZE(hmac_tests); i++) {
  const struct hmac_test *t = &hmac_tests[i];

  wpa_printf(MSG_INFO, "HMAC-SHA256 test case %d:", i + 1);

  if (hmac_sha256(t->key, t->key_len, t->data, t->data_len,
    hash) < 0 ||
      os_memcmp(hash, t->hash, 32) != 0) {
   wpa_printf(MSG_INFO, " FAIL");
   errors++;
  } else
   wpa_printf(MSG_INFO, " OK");

  addr[0] = t->data;
  len[0] = t->data_len;
  if (hmac_sha256_vector(t->key, t->key_len, 1, addr, len,
           hash) < 0 ||
      os_memcmp(hash, t->hash, 32) != 0) {
   wpa_printf(MSG_INFO, " FAIL");
   errors++;
  } else
   wpa_printf(MSG_INFO, " OK");

  if (len[0]) {
   addr[0] = t->data;
   len[0] = 1;
   addr[1] = t->data + 1;
   len[1] = t->data_len - 1;
   if (hmac_sha256_vector(t->key, t->key_len, 2, addr, len,
            hash) < 0 ||
       os_memcmp(hash, t->hash, 32) != 0) {
    wpa_printf(MSG_INFO, " FAIL");
    errors++;
   } else
    wpa_printf(MSG_INFO, " OK");
  }
 }

 wpa_printf(MSG_INFO, "Test IEEE 802.11r KDF");
 sha256_prf((u8 *) "abc", 3, "KDF test", (u8 *) "data", 4,
     hash, sizeof(hash));


 key = os_malloc(8161);
 if (key) {
  os_free(key);
 }

 if (!errors)
  wpa_printf(MSG_INFO, "SHA256 test cases passed");
 return errors;
}
