#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char*,unsigned long long,char*,size_t,unsigned char const*,unsigned long long,size_t) ; 
 int crypto_pwhash_scryptsalsa208sha256_SALTBYTES ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(void)
{
    static struct {
        const char        *passwd_hex;
        size_t             passwdlen;
        const char        *salt_hex;
        size_t             outlen;
        unsigned long long opslimit;
        size_t             memlimit;
    } tests[] = {
        { "a347ae92bce9f80f6f595a4480fc9c2fe7e7d7148d371e9487d75f5c23008ffae0"
          "65577a928febd9b1973a5a95073acdbeb6a030cfc0d79caa2dc5cd011cef02c08d"
          "a232d76d52dfbca38ca8dcbd665b17d1665f7cf5fe59772ec909733b24de97d6f5"
          "8d220b20c60d7c07ec1fd93c52c31020300c6c1facd77937a597c7a6",
          127,
          "5541fbc995d5c197ba290346d2c559dedf405cf97e5f95482143202f9e74f5c2",
          155, 64, 1397645 },
        { "a347ae92bce9f80f6f595a4480fc9c2fe7e7d7148d371e9487d75f5c23008ffae0"
          "65577a928febd9b1973a5a95073acdbeb6a030cfc0d79caa2dc5cd011cef02c08d"
          "a232d76d52dfbca38ca8dcbd665b17d1665f7cf5fe59772ec909733b24de97d6f5"
          "8d220b20c60d7c07ec1fd93c52c31020300c6c1facd77937a597c7a6",
          127,
          "5541fbc995d5c197ba290346d2c559dedf405cf97e5f95482143202f9e74f5c2",
          155, 32768, 1397645 },
    };
    char          passwd[256];
    unsigned char salt[crypto_pwhash_scryptsalsa208sha256_SALTBYTES];
    unsigned char out[256];
    char          out_hex[256 * 2 + 1];
    size_t        i = 0U;

    do {
        FUNC3((unsigned char *) passwd, sizeof passwd,
                       tests[i].passwd_hex, FUNC4(tests[i].passwd_hex), NULL,
                       NULL, NULL);
        FUNC3(salt, sizeof salt, tests[i].salt_hex,
                       FUNC4(tests[i].salt_hex), NULL, NULL, NULL);
        if (FUNC0(
                out, (unsigned long long) tests[i].outlen, passwd,
                tests[i].passwdlen, (const unsigned char *) salt,
                tests[i].opslimit, tests[i].memlimit) != 0) {
            FUNC1("pwhash failure\n");
        }
        FUNC2(out_hex, sizeof out_hex, out, tests[i].outlen);
        FUNC1("%s\n", out_hex);
    } while (++i < (sizeof tests) / (sizeof tests[0]));
}