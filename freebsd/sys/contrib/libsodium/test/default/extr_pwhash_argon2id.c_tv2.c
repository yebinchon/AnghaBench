
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long MEMLIMIT ;
 int OPSLIMIT ;
 int assert (int) ;
 scalar_t__ crypto_pwhash (unsigned char*,unsigned long long,char*,size_t,unsigned char const*,unsigned long long,size_t,int ) ;
 int crypto_pwhash_SALTBYTES ;
 int crypto_pwhash_alg_argon2i13 () ;
 int crypto_pwhash_alg_default () ;
 int crypto_pwhash_argon2id (unsigned char*,int,char*,int,unsigned char*,int,unsigned long long,int ) ;
 int crypto_pwhash_argon2id_alg_argon2id13 () ;
 int printf (char*,...) ;
 int sodium_bin2hex (char*,int,unsigned char*,size_t) ;
 int sodium_hex2bin (unsigned char*,int,char const*,int,int *,int *,int *) ;
 int strlen (char*) ;

__attribute__((used)) static void
tv2(void)
{
    static struct {
        const char * passwd_hex;
        size_t passwd_len;
        const char * salt_hex;
        size_t outlen;
        unsigned long long opslimit;
        size_t memlimit;
        unsigned int lanes;
    } tests[] = {
        { "a347ae92bce9f80f6f595a4480fc9c2fe7e7d7148d371e9487d75f5c23008ffae0"
          "65577a928febd9b1973a5a95073acdbeb6a030cfc0d79caa2dc5cd011cef02c08d"
          "a232d76d52dfbca38ca8dcbd665b17d1665f7cf5fe59772ec909733b24de97d6f5"
          "8d220b20c60d7c07ec1fd93c52c31020300c6c1facd77937a597c7a6",
          127,
          "5541fbc995d5c197ba290346d2c559dedf405cf97e5f95482143202f9e74f5c2",
          155, 4, 397645, 1 },
        { "a347ae92bce9f80f6f595a4480fc9c2fe7e7d7148d371e9487d75f5c23008ffae0"
          "65577a928febd9b1973a5a95073acdbeb6a030cfc0d79caa2dc5cd011cef02c08d"
          "a232d76d52dfbca38ca8dcbd665b17d1665f7cf5fe59772ec909733b24de97d6f5"
          "8d220b20c60d7c07ec1fd93c52c31020300c6c1facd77937a597c7a6",
          127,
          "5541fbc995d5c197ba290346d2c559dedf405cf97e5f95482143202f9e74f5c2",
          155, 3, 397645, 1 },
    };
    char passwd[256];
    unsigned char salt[crypto_pwhash_SALTBYTES];
    unsigned char out[256];
    char out_hex[256 * 2 + 1];
    size_t i = 0U;

    do {
        sodium_hex2bin((unsigned char *) passwd, sizeof passwd,
                       tests[i].passwd_hex, strlen(tests[i].passwd_hex), ((void*)0),
                       ((void*)0), ((void*)0));
        sodium_hex2bin(salt, sizeof salt, tests[i].salt_hex,
                       strlen(tests[i].salt_hex), ((void*)0), ((void*)0), ((void*)0));
        if (crypto_pwhash(out, (unsigned long long) tests[i].outlen, passwd,
                          tests[i].passwd_len, (const unsigned char *) salt,
                          tests[i].opslimit, tests[i].memlimit,
                          crypto_pwhash_alg_default()) != 0) {
            printf("[tv2] pwhash failure: [%u]\n", (unsigned int) i);
            continue;
        }
        sodium_bin2hex(out_hex, sizeof out_hex, out, tests[i].outlen);
        printf("%s\n", out_hex);
    } while (++i < (sizeof tests) / (sizeof tests[0]));

    if (crypto_pwhash_argon2id(out, sizeof out, "password", strlen("password"), salt, 3,
                               1ULL << 12, 0) != -1) {
        printf("[tv2] pwhash should have failed (0)\n");
    }
    if (crypto_pwhash_argon2id(out, sizeof out, "password", strlen("password"), salt, 3,
                               1, crypto_pwhash_argon2id_alg_argon2id13()) != -1) {
        printf("[tv2] pwhash should have failed (1)\n");
    }
    if (crypto_pwhash_argon2id(out, sizeof out, "password", strlen("password"), salt, 3,
                               1ULL << 12, crypto_pwhash_argon2id_alg_argon2id13()) != -1) {
        printf("[tv2] pwhash should have failed (2)\n");
    }
    if (crypto_pwhash_argon2id(out, sizeof out, "password", strlen("password"), salt, 2,
                               1ULL << 12, crypto_pwhash_argon2id_alg_argon2id13()) != -1) {
        printf("[tv2] pwhash should have failed (3)\n");
    }
    if (crypto_pwhash_argon2id(out, 15, "password", strlen("password"), salt, 3,
                               1ULL << 12, crypto_pwhash_argon2id_alg_argon2id13()) != -1) {
        printf("[tv2] pwhash with a short output length should have failed\n");
    }
    if (crypto_pwhash_argon2id(out, sizeof out, "password", 0x100000000ULL, salt, 3,
                               1ULL << 12, crypto_pwhash_argon2id_alg_argon2id13()) != -1) {
        printf("[tv2] pwhash with a long password length should have failed\n");
    }
    assert(crypto_pwhash_argon2id(out, sizeof out, "password", strlen("password"), salt,
                                  OPSLIMIT, MEMLIMIT, crypto_pwhash_alg_argon2i13()) == -1);
}
