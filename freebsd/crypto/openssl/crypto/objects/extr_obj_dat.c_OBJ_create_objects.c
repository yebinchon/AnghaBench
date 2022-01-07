
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_gets (int *,char*,int) ;
 int OBJ_create (char*,char*,char*) ;
 int ossl_isalnum (char) ;
 scalar_t__ ossl_isdigit (char) ;
 scalar_t__ ossl_isspace (char) ;

int OBJ_create_objects(BIO *in)
{
    char buf[512];
    int i, num = 0;
    char *o, *s, *l = ((void*)0);

    for (;;) {
        s = o = ((void*)0);
        i = BIO_gets(in, buf, 512);
        if (i <= 0)
            return num;
        buf[i - 1] = '\0';
        if (!ossl_isalnum(buf[0]))
            return num;
        o = s = buf;
        while (ossl_isdigit(*s) || *s == '.')
            s++;
        if (*s != '\0') {
            *(s++) = '\0';
            while (ossl_isspace(*s))
                s++;
            if (*s == '\0') {
                s = ((void*)0);
            } else {
                l = s;
                while (*l != '\0' && !ossl_isspace(*l))
                    l++;
                if (*l != '\0') {
                    *(l++) = '\0';
                    while (ossl_isspace(*l))
                        l++;
                    if (*l == '\0') {
                        l = ((void*)0);
                    }
                } else {
                    l = ((void*)0);
                }
            }
        } else {
            s = ((void*)0);
        }
        if (*o == '\0')
            return num;
        if (!OBJ_create(o, s, l))
            return num;
        num++;
    }
}
