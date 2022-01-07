
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ crypto_pwhash_scryptsalsa208sha256_ll (int const*,size_t,int const*,size_t,scalar_t__,scalar_t__,scalar_t__,int*,size_t) ;
 int printf (char*,...) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
tv(const char *passwd, const char *salt, uint64_t N, uint32_t r, uint32_t p)
{
    uint8_t data[64];
    size_t i;
    size_t olen = (sizeof data / sizeof data[0]);
    size_t passwd_len = strlen(passwd);
    size_t salt_len = strlen(salt);
    int line_items = 0;

    if (crypto_pwhash_scryptsalsa208sha256_ll(
            (const uint8_t *) passwd, passwd_len, (const uint8_t *) salt,
            salt_len, N, r, p, data, olen) != 0) {
        printf("pwhash_scryptsalsa208sha256_ll([%s],[%s]) failure\n", passwd,
               salt);
        return;
    }

    printf("scrypt('%s', '%s', %lu, %lu, %lu, %lu) =\n", passwd, salt,
           (unsigned long) N, (unsigned long) r, (unsigned long) p,
           (unsigned long) olen);

    for (i = 0; i < olen; i++) {
        printf("%02x%c", data[i], line_items < 15 ? ' ' : '\n');
        line_items = line_items < 15 ? line_items + 1 : 0;
    }
}
