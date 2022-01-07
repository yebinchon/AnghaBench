
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_STRING ;


 int ASN1_STRING_to_UTF8 (unsigned char**,int *) ;
 int OPENSSL_free (unsigned char*) ;
 int X509_V_ERR_OUT_OF_MEM ;
 int X509_V_ERR_UNSUPPORTED_NAME_SYNTAX ;
 int X509_V_OK ;
 size_t strlen (char*) ;

__attribute__((used)) static int cn2dnsid(ASN1_STRING *cn, unsigned char **dnsid, size_t *idlen)
{
    int utf8_length;
    unsigned char *utf8_value;
    int i;
    int isdnsname = 0;


    *dnsid = ((void*)0);
    *idlen = 0;
    if ((utf8_length = ASN1_STRING_to_UTF8(&utf8_value, cn)) < 0)
        return X509_V_ERR_OUT_OF_MEM;






    while (utf8_length > 0 && utf8_value[utf8_length - 1] == '\0')
        --utf8_length;


    if ((size_t)utf8_length != strlen((char *)utf8_value)) {
        OPENSSL_free(utf8_value);
        return X509_V_ERR_UNSUPPORTED_NAME_SYNTAX;
    }
    for (i = 0; i < utf8_length; ++i) {
        unsigned char c = utf8_value[i];

        if ((c >= 'a' && c <= 'z')
            || (c >= 'A' && c <= 'Z')
            || (c >= '0' && c <= '9')
            || c == '_')
            continue;


        if (i > 0 && i < utf8_length - 1) {
            if (c == '-')
                continue;





            if (c == '.'
                && utf8_value[i + 1] != '.'
                && utf8_value[i - 1] != '-'
                && utf8_value[i + 1] != '-') {
                isdnsname = 1;
                continue;
            }
        }
        isdnsname = 0;
        break;
    }

    if (isdnsname) {
        *dnsid = utf8_value;
        *idlen = (size_t)utf8_length;
        return X509_V_OK;
    }
    OPENSSL_free(utf8_value);
    return X509_V_OK;
}
