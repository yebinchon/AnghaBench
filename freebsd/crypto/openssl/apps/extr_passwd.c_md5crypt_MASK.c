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
typedef  int /*<<< orphan*/  out_buf ;
typedef  int /*<<< orphan*/  buf_perm ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  ascii_salt ;
typedef  int /*<<< orphan*/  ascii_magic ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 unsigned char* ascii_dollar ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 void** cov_2char ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,size_t) ; 
 int FUNC13 (char const*) ; 

__attribute__((used)) static char *FUNC14(const char *passwd, const char *magic, const char *salt)
{
    /* "$apr1$..salt..$.......md5hash..........\0" */
    static char out_buf[6 + 9 + 24 + 2];
    unsigned char buf[MD5_DIGEST_LENGTH];
    char ascii_magic[5];         /* "apr1" plus '\0' */
    char ascii_salt[9];          /* Max 8 chars plus '\0' */
    char *ascii_passwd = NULL;
    char *salt_out;
    int n;
    unsigned int i;
    EVP_MD_CTX *md = NULL, *md2 = NULL;
    size_t passwd_len, salt_len, magic_len;

    passwd_len = FUNC13(passwd);

    out_buf[0] = 0;
    magic_len = FUNC13(magic);
    FUNC9(ascii_magic, magic, sizeof(ascii_magic));
#ifdef CHARSET_EBCDIC
    if ((magic[0] & 0x80) != 0)    /* High bit is 1 in EBCDIC alnums */
        ebcdic2ascii(ascii_magic, ascii_magic, magic_len);
#endif

    /* The salt gets truncated to 8 chars */
    FUNC9(ascii_salt, salt, sizeof(ascii_salt));
    salt_len = FUNC13(ascii_salt);
#ifdef CHARSET_EBCDIC
    ebcdic2ascii(ascii_salt, ascii_salt, salt_len);
#endif

#ifdef CHARSET_EBCDIC
    ascii_passwd = OPENSSL_strdup(passwd);
    if (ascii_passwd == NULL)
        return NULL;
    ebcdic2ascii(ascii_passwd, ascii_passwd, passwd_len);
    passwd = ascii_passwd;
#endif

    if (magic_len > 0) {
        FUNC8(out_buf, ascii_dollar, sizeof(out_buf));

        if (magic_len > 4)    /* assert it's  "1" or "apr1" */
            goto err;

        FUNC8(out_buf, ascii_magic, sizeof(out_buf));
        FUNC8(out_buf, ascii_dollar, sizeof(out_buf));
    }

    FUNC8(out_buf, ascii_salt, sizeof(out_buf));

    if (FUNC13(out_buf) > 6 + 8) /* assert "$apr1$..salt.." */
        goto err;

    salt_out = out_buf;
    if (magic_len > 0)
        salt_out += 2 + magic_len;

    if (salt_len > 8)
        goto err;

    md = FUNC4();
    if (md == NULL
        || !FUNC1(md, FUNC5(), NULL)
        || !FUNC2(md, passwd, passwd_len))
        goto err;

    if (magic_len > 0)
        if (!FUNC2(md, ascii_dollar, 1)
            || !FUNC2(md, ascii_magic, magic_len)
            || !FUNC2(md, ascii_dollar, 1))
          goto err;

    if (!FUNC2(md, ascii_salt, salt_len))
        goto err;

    md2 = FUNC4();
    if (md2 == NULL
        || !FUNC1(md2, FUNC5(), NULL)
        || !FUNC2(md2, passwd, passwd_len)
        || !FUNC2(md2, ascii_salt, salt_len)
        || !FUNC2(md2, passwd, passwd_len)
        || !FUNC0(md2, buf, NULL))
        goto err;

    for (i = passwd_len; i > sizeof(buf); i -= sizeof(buf)) {
        if (!FUNC2(md, buf, sizeof(buf)))
            goto err;
    }
    if (!FUNC2(md, buf, i))
        goto err;

    n = passwd_len;
    while (n) {
        if (!FUNC2(md, (n & 1) ? "\0" : passwd, 1))
            goto err;
        n >>= 1;
    }
    if (!FUNC0(md, buf, NULL))
        return NULL;

    for (i = 0; i < 1000; i++) {
        if (!FUNC1(md2, FUNC5(), NULL))
            goto err;
        if (!FUNC2(md2,
                              (i & 1) ? (unsigned const char *)passwd : buf,
                              (i & 1) ? passwd_len : sizeof(buf)))
            goto err;
        if (i % 3) {
            if (!FUNC2(md2, ascii_salt, salt_len))
                goto err;
        }
        if (i % 7) {
            if (!FUNC2(md2, passwd, passwd_len))
                goto err;
        }
        if (!FUNC2(md2,
                              (i & 1) ? buf : (unsigned const char *)passwd,
                              (i & 1) ? sizeof(buf) : passwd_len))
                goto err;
        if (!FUNC0(md2, buf, NULL))
                goto err;
    }
    FUNC3(md2);
    FUNC3(md);
    md2 = NULL;
    md = NULL;

    {
        /* transform buf into output string */
        unsigned char buf_perm[sizeof(buf)];
        int dest, source;
        char *output;

        /* silly output permutation */
        for (dest = 0, source = 0; dest < 14;
             dest++, source = (source + 6) % 17)
            buf_perm[dest] = buf[source];
        buf_perm[14] = buf[5];
        buf_perm[15] = buf[11];
# ifndef PEDANTIC              /* Unfortunately, this generates a "no
                                 * effect" warning */
        FUNC11(16 == sizeof(buf_perm));
# endif

        output = salt_out + salt_len;
        FUNC11(output == out_buf + FUNC13(out_buf));

        *output++ = ascii_dollar[0];

        for (i = 0; i < 15; i += 3) {
            *output++ = cov_2char[buf_perm[i + 2] & 0x3f];
            *output++ = cov_2char[((buf_perm[i + 1] & 0xf) << 2) |
                                  (buf_perm[i + 2] >> 6)];
            *output++ = cov_2char[((buf_perm[i] & 3) << 4) |
                                  (buf_perm[i + 1] >> 4)];
            *output++ = cov_2char[buf_perm[i] >> 2];
        }
        FUNC11(i == 15);
        *output++ = cov_2char[buf_perm[i] & 0x3f];
        *output++ = cov_2char[buf_perm[i] >> 6];
        *output = 0;
        FUNC11(FUNC13(out_buf) < sizeof(out_buf));
#ifdef CHARSET_EBCDIC
        ascii2ebcdic(out_buf, out_buf, strlen(out_buf));
#endif
    }

    return out_buf;

 err:
    FUNC6(ascii_passwd);
    FUNC3(md2);
    FUNC3(md);
    return NULL;
}