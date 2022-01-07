
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* app_malloc (int,char*) ;
 int strlen (char const*) ;

unsigned char *next_protos_parse(size_t *outlen, const char *in)
{
    size_t len;
    unsigned char *out;
    size_t i, start = 0;

    len = strlen(in);
    if (len >= 65535)
        return ((void*)0);

    out = app_malloc(strlen(in) + 1, "NPN buffer");
    for (i = 0; i <= len; ++i) {
        if (i == len || in[i] == ',') {
            if (i - start > 255) {
                OPENSSL_free(out);
                return ((void*)0);
            }
            out[start] = (unsigned char)(i - start);
            start = i + 1;
        } else {
            out[i + 1] = in[i];
        }
    }

    *outlen = len + 1;
    return out;
}
