
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (char*) ;
 char* OPENSSL_realloc (char*,int) ;
 char* app_malloc (int,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int append_buf(char **buf, int *size, const char *s)
{
    const int expand = 256;
    int len = strlen(s) + 1;
    char *p = *buf;

    if (p == ((void*)0)) {
        *size = ((len + expand - 1) / expand) * expand;
        p = *buf = app_malloc(*size, "engine buffer");
    } else {
        const int blen = strlen(p);

        if (blen > 0)
            len += 2 + blen;

        if (len > *size) {
            *size = ((len + expand - 1) / expand) * expand;
            p = OPENSSL_realloc(p, *size);
            if (p == ((void*)0)) {
                OPENSSL_free(*buf);
                *buf = ((void*)0);
                return 0;
            }
            *buf = p;
        }

        if (blen > 0) {
            p += blen;
            *p++ = ',';
            *p++ = ' ';
        }
    }

    strcpy(p, s);
    return 1;
}
