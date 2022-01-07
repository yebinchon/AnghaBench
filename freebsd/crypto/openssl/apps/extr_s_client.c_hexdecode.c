
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int ossl_ssize_t ;


 int OPENSSL_free (unsigned char*) ;
 int OPENSSL_hexchar2int (char const) ;
 int _UC (char const) ;
 unsigned char* app_malloc (int,char*) ;
 scalar_t__ isspace (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static ossl_ssize_t hexdecode(const char **inptr, void *result)
{
    unsigned char **out = (unsigned char **)result;
    const char *in = *inptr;
    unsigned char *ret = app_malloc(strlen(in) / 2, "hexdecode");
    unsigned char *cp = ret;
    uint8_t byte;
    int nibble = 0;

    if (ret == ((void*)0))
        return -1;

    for (byte = 0; *in; ++in) {
        int x;

        if (isspace(_UC(*in)))
            continue;
        x = OPENSSL_hexchar2int(*in);
        if (x < 0) {
            OPENSSL_free(ret);
            return 0;
        }
        byte |= (char)x;
        if ((nibble ^= 1) == 0) {
            *cp++ = byte;
            byte = 0;
        } else {
            byte <<= 4;
        }
    }
    if (nibble != 0) {
        OPENSSL_free(ret);
        return 0;
    }
    *inptr = in;

    return cp - (*out = ret);
}
