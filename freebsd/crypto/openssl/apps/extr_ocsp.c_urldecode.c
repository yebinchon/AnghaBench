
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_hexchar2int (char) ;
 int _UC (char) ;
 scalar_t__ isxdigit (int ) ;

__attribute__((used)) static int urldecode(char *p)
{
    unsigned char *out = (unsigned char *)p;
    unsigned char *save = out;

    for (; *p; p++) {
        if (*p != '%')
            *out++ = *p;
        else if (isxdigit(_UC(p[1])) && isxdigit(_UC(p[2]))) {

            *out++ = (OPENSSL_hexchar2int(p[1]) << 4)
                   | OPENSSL_hexchar2int(p[2]);
            p += 2;
        }
        else
            return -1;
    }
    *out = '\0';
    return (int)(out - save);
}
